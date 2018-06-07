/*
 * This file Copyright (C) 2008 Charles Kerr <charles@rebelbase.com>
 *
 * This file is licensed by the GPL version 2.  Works owned by the
 * Transmission project are granted a special exemption to clause 2(b)
 * so that the bulk of its code can remain under the MIT license.
 * This exemption does not extend to derived works not owned by
 * the Transmission project.
 *
 * $Id: daemon.c 7346 2008-12-10 19:00:20Z charles $
 */

#include <assert.h>
#include <errno.h>
#include <stdio.h> /* printf */
#include <stdlib.h> /* exit, atoi */
#include <string.h> /* strcmp */

#include <fcntl.h> /* open */
#include <signal.h>
#include <unistd.h> /* daemon */

#include <libtransmission/transmission.h>
#include <libtransmission/bencode.h>
#include <libtransmission/rpcimpl.h>
#include <libtransmission/tr-getopt.h>
#include <libtransmission/utils.h>
#include <libtransmission/version.h>

#define MY_NAME "transmission-daemon"

static int           closing = FALSE;
static tr_session  * mySession = NULL;
static char        * myConfigFilename = NULL;

#define KEY_BLOCKLIST         "blocklist-enabled"
#define KEY_DOWNLOAD_DIR      "download-dir"
#define KEY_ENCRYPTION        "encryption"
#define KEY_LAZY_BITFIELD     "lazy-bitfield-enabled"
#define KEY_PEER_LIMIT        "max-peers-global"
#define KEY_PEER_PORT         "peer-port"
#define KEY_PORT_FORWARDING   "port-forwarding-enabled"
#define KEY_PEX_ENABLED       "pex-enabled"
#define KEY_AUTH_REQUIRED     "rpc-authentication-required"
#define KEY_USERNAME          "rpc-username"
#define KEY_PASSWORD          "rpc-password"
#define KEY_WHITELIST         "rpc-whitelist"
#define KEY_WHITELIST_ENABLED "rpc-whitelist-enabled"
#define KEY_RPC_PORT          "rpc-port"
#define KEY_DSPEED            "download-limit"
#define KEY_DSPEED_ENABLED    "download-limit-enabled"
#define KEY_USPEED            "upload-limit"
#define KEY_USPEED_ENABLED    "upload-limit-enabled"

#define CONFIG_FILE           "settings.json"

/***
****  Config File
***/

static void
replaceInt( tr_benc *    dict,
            const char * key,
            int64_t      value )
{
    tr_bencDictRemove( dict, key );
    tr_bencDictAddInt( dict, key, value );
}

static void
replaceStr( tr_benc *    dict,
            const char * key,
            const char*  value )
{
    tr_bencDictRemove( dict, key );
    tr_bencDictAddStr( dict, key, value );
}

static void
saveState( tr_session * s )
{
    int     i, n = 0;
    char *  strs[4];

    tr_benc d;

    if( tr_bencLoadJSONFile( myConfigFilename, &d ) )
        tr_bencInitDict( &d, 16 );

    replaceInt( &d, KEY_BLOCKLIST,       tr_blocklistIsEnabled( s ) );
    replaceStr( &d, KEY_DOWNLOAD_DIR,    tr_sessionGetDownloadDir( s ) );
    replaceInt( &d, KEY_PEER_LIMIT,      tr_sessionGetPeerLimit( s ) );
    replaceInt( &d, KEY_PEER_PORT,       tr_sessionGetPeerPort( s ) );
    replaceInt( &d, KEY_PORT_FORWARDING, tr_sessionIsPortForwardingEnabled( s ) );
    replaceInt( &d, KEY_PEX_ENABLED,     tr_sessionIsPexEnabled( s ) );
    replaceStr( &d, KEY_USERNAME,        strs[n++] = tr_sessionGetRPCUsername( s ) );
    replaceStr( &d, KEY_PASSWORD,        strs[n++] = tr_sessionGetRPCPassword( s ) );
    replaceStr( &d, KEY_WHITELIST,       strs[n++] = tr_sessionGetRPCWhitelist( s ) );
    replaceInt( &d, KEY_RPC_PORT,        tr_sessionGetRPCPort( s ) );
    replaceInt( &d, KEY_AUTH_REQUIRED,   tr_sessionIsRPCPasswordEnabled( s ) );
    replaceInt( &d, KEY_DSPEED,          tr_sessionGetSpeedLimit( s, TR_DOWN ) );
    replaceInt( &d, KEY_DSPEED_ENABLED,  tr_sessionIsSpeedLimitEnabled( s, TR_DOWN ) );
    replaceInt( &d, KEY_USPEED,          tr_sessionGetSpeedLimit( s, TR_UP ) );
    replaceInt( &d, KEY_USPEED_ENABLED,  tr_sessionIsSpeedLimitEnabled( s, TR_UP ) );
    replaceInt( &d, KEY_ENCRYPTION,      tr_sessionGetEncryption( s ) );

    tr_bencSaveJSONFile( myConfigFilename, &d );
    tr_bencFree( &d );
    tr_ninf( MY_NAME, "saved \"%s\"", myConfigFilename );

    for( i = 0; i < n; ++i )
        tr_free( strs[i] );
}

static void
getConfigInt( tr_benc *    dict,
              const char * key,
              int *        setme,
              int          defaultVal )
{
    if( *setme < 0 )
    {
        int64_t i;
        if( tr_bencDictFindInt( dict, key, &i ) )
            *setme = i;
        else
            *setme = defaultVal;
    }
}

static void
getConfigStr( tr_benc *     dict,
              const char *  key,
              const char ** setme,
              const char *  defaultVal )
{
    if( !*setme )
    {
        const char * s;
        if( tr_bencDictFindStr( dict, key, &s ) )
            *setme = s;
        else
            *setme = defaultVal;
    }
}

/**
 * @param port      port number, or -1 if not set in the command line
 * @param auth      TRUE, FALSE, or -1 if not set on the command line
 * @param blocklist TRUE, FALSE, or -1 if not set on the command line
 */
static void
session_init( const char * configDir,
              const char * downloadDir,
              int          rpcPort,
              const char * whitelist,
              int          authRequired,
              const char * username,
              const char * password,
              int          blocklistEnabled )
{
    char        * mycwd;
    tr_benc       state, *dict = NULL;
    int           peerPort = -1, peers = -1;
    int           whitelistEnabled = -1;
    int           pexEnabled = -1;
    int           fwdEnabled = -1;
    int           upLimit = -1, upLimited = -1, downLimit = -1,
                  downLimited = -1;
    int           encryption = -1;
    int           useLazyBitfield = -1;
    tr_ctor *     ctor;
    tr_torrent ** torrents;

    if( !tr_bencLoadJSONFile( myConfigFilename, &state ) )
        dict = &state;

    /***
    ****  Decide on which values to pass into tr_sessionInitFull().
    ****  The command-line arguments are given precedence and
    ****  the state file from the previous session is used as a fallback.
    ****  If neither of those can be found, the TR_DEFAULT fields are used .
    ***/

    mycwd = tr_getcwd( );
    getConfigStr( dict, KEY_DOWNLOAD_DIR,    &downloadDir,       mycwd );
    getConfigInt( dict, KEY_PEX_ENABLED,     &pexEnabled,        TR_DEFAULT_PEX_ENABLED );
    getConfigInt( dict, KEY_PORT_FORWARDING, &fwdEnabled,        TR_DEFAULT_PORT_FORWARDING_ENABLED );
    getConfigInt( dict, KEY_PEER_PORT,       &peerPort,          TR_DEFAULT_PORT );
    getConfigInt( dict, KEY_DSPEED,          &downLimit,         100 );
    getConfigInt( dict, KEY_DSPEED_ENABLED,  &downLimited,       FALSE );
    getConfigInt( dict, KEY_USPEED,          &upLimit,           100 );
    getConfigInt( dict, KEY_USPEED_ENABLED,  &upLimited,         FALSE );
    getConfigInt( dict, KEY_LAZY_BITFIELD,   &useLazyBitfield,   TR_DEFAULT_LAZY_BITFIELD_ENABLED );
    getConfigInt( dict, KEY_PEER_LIMIT,      &peers,             TR_DEFAULT_GLOBAL_PEER_LIMIT );
    getConfigInt( dict, KEY_BLOCKLIST,       &blocklistEnabled,  TR_DEFAULT_BLOCKLIST_ENABLED );
    getConfigInt( dict, KEY_RPC_PORT,        &rpcPort,           TR_DEFAULT_RPC_PORT );
    getConfigStr( dict, KEY_WHITELIST,       &whitelist,         TR_DEFAULT_RPC_WHITELIST );
    getConfigInt( dict, KEY_AUTH_REQUIRED,   &authRequired,      FALSE );
    getConfigStr( dict, KEY_USERNAME,        &username,          NULL );
    getConfigStr( dict, KEY_PASSWORD,        &password,          NULL );
    getConfigInt( dict, KEY_ENCRYPTION,      &encryption,        TR_DEFAULT_ENCRYPTION );

    whitelistEnabled = whitelist && *whitelist;

    /***
    ****
    ***/

    /* start the session */
    mySession = tr_sessionInitFull( configDir, "daemon", downloadDir,
                                    pexEnabled, fwdEnabled, peerPort,
                                    encryption,
                                    useLazyBitfield,
                                    upLimited, upLimit,
                                    downLimited, downLimit,
                                    peers,
                                    TR_MSG_INF, 0,
                                    blocklistEnabled,
                                    TR_DEFAULT_PEER_SOCKET_TOS,
                                    TRUE, rpcPort,
                                    whitelistEnabled, whitelist,
                                    authRequired, username, password,
                                    TR_DEFAULT_PROXY_ENABLED,
                                    TR_DEFAULT_PROXY,
                                    TR_DEFAULT_PROXY_PORT,
                                    TR_DEFAULT_PROXY_TYPE,
                                    TR_DEFAULT_PROXY_AUTH_ENABLED,
                                    TR_DEFAULT_PROXY_USERNAME,
                                    TR_DEFAULT_PROXY_PASSWORD );


    if( authRequired )
        tr_ninf( MY_NAME, "requiring authentication" );

    /* load the torrents */
    ctor = tr_ctorNew( mySession );
    torrents = tr_sessionLoadTorrents( mySession, ctor, NULL );
    tr_free( torrents );
    tr_ctorFree( ctor );

    if( dict )
        tr_bencFree( &state );

    tr_free( mycwd );
}

static const char *
getUsage( void )
{
    return "Transmission " LONG_VERSION_STRING
           "  http://www.transmissionbt.com/\n"
           "A fast and easy BitTorrent client\n"
           "\n"
           MY_NAME " is a headless Transmission session\n"
                   "that can be controlled via transmission-remote or Clutch.\n"
                   "\n"
                   "Usage: " MY_NAME " [options]";
}

static const struct tr_option options[] =
{
    { 'a', "allowed",
      "Allowed IP addresses.  (Default: " TR_DEFAULT_RPC_WHITELIST ")",       "a",
      1, "<list>"     },
    { 'b', "blocklist",    "Enable peer blocklists",
      "b",             0, NULL         },
    { 'B', "no-blocklist", "Disable peer blocklists",
      "B",             0, NULL         },
    { 'f', "foreground",   "Run in the foreground instead of daemonizing",
      "f",             0, NULL         },
    { 'g', "config-dir",   "Where to look for configuration files",
      "g",             1, "<path>"     },
    { 'p', "port",
      "RPC port (Default: " TR_DEFAULT_RPC_PORT_STR ")",               "p",
      1, "<port>"     },
    { 't', "auth",         "Require authentication",
      "t",             0, NULL         },
    { 'T', "no-auth",      "Don't require authentication",
      "T",             0, NULL         },
    { 'u', "username",     "Set username for authentication",
      "u",             1, "<username>" },
    { 'v', "password",     "Set password for authentication",
      "v",             1, "<password>" },
    { 'w', "download-dir", "Where to save downloaded data",
      "w",             1, "<path>"     },
    {   0, NULL,           NULL,
        NULL,            0, NULL         }
};

static void
showUsage( void )
{
    tr_getopt_usage( MY_NAME, getUsage( ), options );
    exit( 0 );
}

static void
readargs( int           argc,
          const char ** argv,
          int *         nofork,
          const char ** configDir,
          const char ** downloadDir,
          int *         rpcPort,
          const char ** whitelist,
          int *         authRequired,
          const char ** username,
          const char ** password,
          int *         blocklistEnabled )
{
    int          c;
    const char * optarg;

    while( ( c = tr_getopt( getUsage( ), argc, argv, options, &optarg ) ) )
    {
        switch( c )
        {
            case 'a':
                *whitelist = optarg; break;

            case 'b':
                *blocklistEnabled = 1; break;

            case 'B':
                *blocklistEnabled = 0; break;

            case 'f':
                *nofork = 1; break;

            case 'g':
                *configDir = optarg; break;

            case 'p':
                *rpcPort = atoi( optarg ); break;

            case 't':
                *authRequired = TRUE; break;

            case 'T':
                *authRequired = FALSE; break;

            case 'u':
                *username = optarg; break;

            case 'v':
                *password = optarg; break;

            case 'w':
                *downloadDir = optarg; break;

            default:
                showUsage( ); break;
        }
    }
}

static void
gotsig( int sig UNUSED )
{
    closing = TRUE;
}

#if !defined( WIN32 )
#if !defined( HAVE_DAEMON )
static int
daemon( int nochdir,
        int noclose )
{
    switch( fork( ) )
    {
        case 0:
            break;

        case - 1:
            tr_nerr( MY_NAME, "Error daemonizing (fork)! %d - %s", errno,
                    strerror(
                        errno ) );
            return -1;

        default:
            _exit( 0 );
    }

    if( setsid( ) < 0 )
    {
        tr_nerr( MY_NAME, "Error daemonizing (setsid)! %d - %s", errno,
                strerror(
                    errno ) );
        return -1;
    }

    switch( fork( ) )
    {
        case 0:
            break;

        case - 1:
            tr_nerr( MY_NAME, "Error daemonizing (fork2)! %d - %s", errno,
                    strerror(
                        errno ) );
            return -1;

        default:
            _exit( 0 );
    }

    if( !nochdir && 0 > chdir( "/" ) )
    {
        tr_nerr( MY_NAME, "Error daemonizing (chdir)! %d - %s", errno,
                strerror(
                    errno ) );
        return -1;
    }

    if( !noclose )
    {
        int fd;
        if( ( ( fd = open( "/dev/null", O_RDONLY ) ) ) != 0 )
        {
            dup2( fd,  0 );
            close( fd );
        }
        if( ( ( fd = open( "/dev/null", O_WRONLY ) ) ) != 1 )
        {
            dup2( fd, 1 );
            close( fd );
        }
        if( ( ( fd = open( "/dev/null", O_WRONLY ) ) ) != 2 )
        {
            dup2( fd, 2 );
            close( fd );
        }
    }

    return 0;
}
#endif
#endif

int
main( int     argc,
      char ** argv )
{
    int          nofork = 0;
    int          rpcPort = -1;
    int          authRequired = -1;
    int          blocklistEnabled = -1;
    char *       freeme = NULL;
    const char * configDir = NULL;
    const char * downloadDir = NULL;
    const char * whitelist = NULL;
    const char * username = NULL;
    const char * password = NULL;

    signal( SIGINT, gotsig );
    signal( SIGTERM, gotsig );
#ifndef WIN32 
    signal( SIGQUIT, gotsig );
    signal( SIGPIPE, SIG_IGN );
    signal( SIGHUP, SIG_IGN );
#endif

    readargs( argc, (const char**)argv, &nofork, &configDir, &downloadDir,
              &rpcPort, &whitelist, &authRequired, &username, &password,
              &blocklistEnabled );
    if( configDir == NULL )
        configDir = getenv( "TRANSMISSION_HOME" );
    if( configDir == NULL )
        configDir = freeme = tr_strdup_printf( "%s-daemon",
                                               tr_getDefaultConfigDir( ) );
    myConfigFilename = tr_buildPath( configDir, CONFIG_FILE, NULL );

#ifndef WIN32
    if( !nofork )
    {
        if( 0 > daemon( 1, 0 ) )
        {
            fprintf( stderr, "failed to daemonize: %s\n", strerror( errno ) );
            exit( 1 );
        }
    }
#endif

    session_init( configDir, downloadDir,
                  rpcPort, whitelist, authRequired, username, password,
                  blocklistEnabled );

    while( !closing )
        tr_wait( 1000 ); /* sleep one second */

    saveState( mySession );
    printf( "Closing transmission session..." );
    tr_sessionClose( mySession );
    printf( " done.\n" );

    tr_free( freeme );
    tr_free( myConfigFilename );
    return 0;
}

