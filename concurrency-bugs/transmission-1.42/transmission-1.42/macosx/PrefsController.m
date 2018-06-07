/******************************************************************************
 * $Id: PrefsController.m 7081 2008-11-09 12:33:09Z livings124 $
 *
 * Copyright (c) 2005-2008 Transmission authors and contributors
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 *****************************************************************************/

#import "PrefsController.h"
#import "BlocklistDownloaderViewController.h"
#import "BlocklistScheduler.h"
#import "PortChecker.h"
#import "NSApplicationAdditions.h"
#import "NSStringAdditions.h"
#import "UKKQueue.h"
#import "utils.h"

#define DOWNLOAD_FOLDER     0
#define DOWNLOAD_TORRENT    2

#define PROXY_HTTP      0
#define PROXY_SOCKS4    1
#define PROXY_SOCKS5    2

#define RPC_IP_ADD_TAG      0
#define RPC_IP_REMOVE_TAG   1

#define TOOLBAR_GENERAL     @"TOOLBAR_GENERAL"
#define TOOLBAR_TRANSFERS   @"TOOLBAR_TRANSFERS"
#define TOOLBAR_BANDWIDTH   @"TOOLBAR_BANDWIDTH"
#define TOOLBAR_PEERS       @"TOOLBAR_PEERS"
#define TOOLBAR_NETWORK     @"TOOLBAR_NETWORK"
#define TOOLBAR_REMOTE      @"TOOLBAR_REMOTE"

#define PROXY_KEYCHAIN_SERVICE  "Transmission:Proxy"
#define PROXY_KEYCHAIN_NAME     "Proxy"

#define RPC_KEYCHAIN_SERVICE    "Transmission:Remote"
#define RPC_KEYCHAIN_NAME       "Remote"

#define WEBUI_URL   @"http://localhost:%d/transmission/web/"

@interface PrefsController (Private)

- (void) setPrefView: (id) sender;

- (void) folderSheetClosed: (NSOpenPanel *) openPanel returnCode: (int) code contextInfo: (void *) info;
- (void) incompleteFolderSheetClosed: (NSOpenPanel *) openPanel returnCode: (int) code contextInfo: (void *) info;
- (void) importFolderSheetClosed: (NSOpenPanel *) openPanel returnCode: (int) code contextInfo: (void *) info;

- (void) setKeychainPassword: (const char *) password forService: (const char *) service username: (const char *) username;

@end

@implementation PrefsController

tr_handle * fHandle;
+ (void) setHandle: (tr_handle *) handle
{
    fHandle = handle;
}

+ (tr_handle *) handle
{
    return fHandle;
}

- (id) init
{
    if ((self = [super initWithWindowNibName: @"PrefsWindow"]))
    {
        fDefaults = [NSUserDefaults standardUserDefaults];
        
        //checks for old version speeds of -1
        if ([fDefaults integerForKey: @"UploadLimit"] < 0)
        {
            [fDefaults removeObjectForKey: @"UploadLimit"];
            [fDefaults setBool: NO forKey: @"CheckUpload"];
        }
        if ([fDefaults integerForKey: @"DownloadLimit"] < 0)
        {
            [fDefaults removeObjectForKey: @"DownloadLimit"];
            [fDefaults setBool: NO forKey: @"CheckDownload"];
        }
        
        //check for old version download location (before 1.1)
        NSString * choice;
        if ((choice = [fDefaults stringForKey: @"DownloadChoice"]))
        {
            [fDefaults setBool: [choice isEqualToString: @"Constant"] forKey: @"DownloadLocationConstant"];
            [fDefaults setBool: YES forKey: @"DownloadAsk"];
            
            [fDefaults removeObjectForKey: @"DownloadChoice"];
        }
        
        //set auto import
        NSString * autoPath;
        if ([fDefaults boolForKey: @"AutoImport"] && (autoPath = [fDefaults stringForKey: @"AutoImportDirectory"]))
            [[UKKQueue sharedFileWatcher] addPath: [autoPath stringByExpandingTildeInPath]];
        
        //set blocklist scheduler
        [[BlocklistScheduler scheduler] updateSchedule];
        
        //set encryption
        [self setEncryptionMode: nil];
        
        //actually set bandwidth limits
        [self applySpeedSettings: nil];
        
        //set proxy type
        [self updateProxyType];
        [self updateProxyPassword];
        
        //update rpc whitelist
        [self updateRPCPassword];
        
        fRPCWhitelistArray = [[fDefaults arrayForKey: @"RPCWhitelist"] mutableCopy];
        if (!fRPCWhitelistArray)
            fRPCWhitelistArray = [[NSMutableArray arrayWithObject: @"127.0.0.1"] retain];
        [self updateRPCWhitelist];
    }
    
    return self;
}

- (void) dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver: self];
    
    [fPortStatusTimer invalidate];
    if (fPortChecker)
    {
        [fPortChecker cancelProbe];
        [fPortChecker release];
    }
    
    [fRPCWhitelistArray release];
    
    [super dealloc];
}

- (void) awakeFromNib
{
    fHasLoaded = YES;
    
    NSToolbar * toolbar = [[NSToolbar alloc] initWithIdentifier: @"Preferences Toolbar"];
    [toolbar setDelegate: self];
    [toolbar setAllowsUserCustomization: NO];
    [toolbar setDisplayMode: NSToolbarDisplayModeIconAndLabel];
    [toolbar setSizeMode: NSToolbarSizeModeRegular];
    [toolbar setSelectedItemIdentifier: TOOLBAR_GENERAL];
    [[self window] setToolbar: toolbar];
    [toolbar release];
    
    [self setPrefView: nil];
    
    if (![NSApp isOnLeopardOrBetter])
    {
        [fRPCAddRemoveControl sizeToFit];
        [fRPCAddRemoveControl setLabel: @"+" forSegment: RPC_IP_ADD_TAG];
        [fRPCAddRemoveControl setLabel: @"-" forSegment: RPC_IP_REMOVE_TAG];
    }
    
    //set download folder
    [fFolderPopUp selectItemAtIndex: [fDefaults boolForKey: @"DownloadLocationConstant"] ? DOWNLOAD_FOLDER : DOWNLOAD_TORRENT];
    
    //set stop ratio
    [self updateRatioStopField];
    
    //set limits
    [self updateLimitFields];
    
    //set speed limit
    [fSpeedLimitUploadField setIntValue: [fDefaults integerForKey: @"SpeedLimitUploadLimit"]];
    [fSpeedLimitDownloadField setIntValue: [fDefaults integerForKey: @"SpeedLimitDownloadLimit"]];
    
    //set port
    [fPortField setIntValue: [fDefaults integerForKey: @"BindPort"]];
    fNatStatus = -1;
    
    [self updatePortStatus];
    fPortStatusTimer = [NSTimer scheduledTimerWithTimeInterval: 5.0 target: self
                        selector: @selector(updatePortStatus) userInfo: nil repeats: YES];
    
    //set peer connections
    [fPeersGlobalField setIntValue: [fDefaults integerForKey: @"PeersTotal"]];
    [fPeersTorrentField setIntValue: [fDefaults integerForKey: @"PeersTorrent"]];
    
    //set queue values
    [fQueueDownloadField setIntValue: [fDefaults integerForKey: @"QueueDownloadNumber"]];
    [fQueueSeedField setIntValue: [fDefaults integerForKey: @"QueueSeedNumber"]];
    [fStalledField setIntValue: [fDefaults integerForKey: @"StalledMinutes"]];
    
    //set proxy type
    [fProxyAddressField setStringValue: [fDefaults stringForKey: @"ProxyAddress"]];
    int proxyType;
    switch(tr_sessionGetProxyType(fHandle))
    {
        case TR_PROXY_SOCKS4:
            proxyType = PROXY_SOCKS4;
            break;
        case TR_PROXY_SOCKS5:
            proxyType = PROXY_SOCKS5;
            break;
        case TR_PROXY_HTTP:
            proxyType = PROXY_HTTP;
    }
    [fProxyTypePopUp selectItemAtIndex: proxyType];
    
    //set proxy password - does NOT need to be released
    [fProxyPasswordField setStringValue: [NSString stringWithUTF8String: tr_sessionGetProxyPassword(fHandle)]];
    
    //set proxy port
    [fProxyPortField setIntValue: [fDefaults integerForKey: @"ProxyPort"]];
    
    //set blocklist
    [self updateBlocklistFields];
    [[NSNotificationCenter defaultCenter] addObserver: self selector: @selector(updateBlocklistFields)
        name: @"BlocklistUpdated" object: nil];
    
    //set rpc port
    [fRPCPortField setIntValue: [fDefaults integerForKey: @"RPCPort"]];
    
    //set rpc password - has to be released
    char * rpcPassword = tr_sessionGetRPCPassword(fHandle);
    [fRPCPasswordField setStringValue: [NSString stringWithUTF8String: rpcPassword]];
    tr_free(rpcPassword);
}

- (NSToolbarItem *) toolbar: (NSToolbar *) toolbar itemForItemIdentifier: (NSString *) ident willBeInsertedIntoToolbar: (BOOL) flag
{
    NSToolbarItem * item = [[NSToolbarItem alloc] initWithItemIdentifier: ident];

    if ([ident isEqualToString: TOOLBAR_GENERAL])
    {
        [item setLabel: NSLocalizedString(@"General", "Preferences -> toolbar item title")];
        [item setImage: [NSImage imageNamed: [NSApp isOnLeopardOrBetter] ? NSImageNamePreferencesGeneral : @"Preferences.png"]];
        [item setTarget: self];
        [item setAction: @selector(setPrefView:)];
        [item setAutovalidates: NO];
    }
    else if ([ident isEqualToString: TOOLBAR_TRANSFERS])
    {
        [item setLabel: NSLocalizedString(@"Transfers", "Preferences -> toolbar item title")];
        [item setImage: [NSImage imageNamed: @"Transfers.png"]];
        [item setTarget: self];
        [item setAction: @selector(setPrefView:)];
        [item setAutovalidates: NO];
    }
    else if ([ident isEqualToString: TOOLBAR_BANDWIDTH])
    {
        [item setLabel: NSLocalizedString(@"Bandwidth", "Preferences -> toolbar item title")];
        [item setImage: [NSImage imageNamed: @"Bandwidth.png"]];
        [item setTarget: self];
        [item setAction: @selector(setPrefView:)];
        [item setAutovalidates: NO];
    }
    else if ([ident isEqualToString: TOOLBAR_PEERS])
    {
        [item setLabel: NSLocalizedString(@"Peers", "Preferences -> toolbar item title")];
        [item setImage: [NSImage imageNamed: [NSApp isOnLeopardOrBetter] ? NSImageNameUserGroup : @"Peers.png"]];
        [item setTarget: self];
        [item setAction: @selector(setPrefView:)];
        [item setAutovalidates: NO];
    }
    else if ([ident isEqualToString: TOOLBAR_NETWORK])
    {
        [item setLabel: NSLocalizedString(@"Network", "Preferences -> toolbar item title")];
        [item setImage: [NSImage imageNamed: [NSApp isOnLeopardOrBetter] ? NSImageNameNetwork : @"Network.png"]];
        [item setTarget: self];
        [item setAction: @selector(setPrefView:)];
        [item setAutovalidates: NO];
    }
    else if ([ident isEqualToString: TOOLBAR_REMOTE])
    {
        [item setLabel: NSLocalizedString(@"Remote", "Preferences -> toolbar item title")];
        [item setImage: [NSImage imageNamed: @"Remote.png"]];
        [item setTarget: self];
        [item setAction: @selector(setPrefView:)];
        [item setAutovalidates: NO];
    }
    else
    {
        [item release];
        return nil;
    }

    return [item autorelease];
}

- (NSArray *) toolbarSelectableItemIdentifiers: (NSToolbar *) toolbar
{
    return [self toolbarDefaultItemIdentifiers: toolbar];
}

- (NSArray *) toolbarDefaultItemIdentifiers: (NSToolbar *) toolbar
{
    return [self toolbarAllowedItemIdentifiers: toolbar];
}

- (NSArray *) toolbarAllowedItemIdentifiers: (NSToolbar *) toolbar
{
    return [NSArray arrayWithObjects: TOOLBAR_GENERAL, TOOLBAR_TRANSFERS, TOOLBAR_BANDWIDTH,
                                        TOOLBAR_PEERS, TOOLBAR_NETWORK, TOOLBAR_REMOTE, nil];
}

- (void) setPort: (id) sender
{
    int port = [sender intValue];
    [fDefaults setInteger: port forKey: @"BindPort"];
    tr_sessionSetPeerPort(fHandle, port);
    
    fPeerPort = -1;
    [self updatePortStatus];
}

- (void) setNat: (id) sender
{
    tr_sessionSetPortForwardingEnabled(fHandle, [fDefaults boolForKey: @"NatTraversal"]);
    
    fNatStatus = -1;
    [self updatePortStatus];
}

- (void) updatePortStatus
{
    const tr_port_forwarding fwd = tr_sessionGetPortForwarding(fHandle);
    const int port = tr_sessionGetPeerPort(fHandle);
    BOOL natStatusChanged = (fNatStatus != fwd);
    BOOL peerPortChanged = (fPeerPort != port);

    if (natStatusChanged || peerPortChanged)
    {
        fNatStatus = fwd;
        fPeerPort = port;
        
        [fPortStatusField setStringValue: @""];
        [fPortStatusImage setImage: nil];
        [fPortStatusProgress startAnimation: self];
        
        if (fPortChecker)
        {
            [fPortChecker cancelProbe];
            [fPortChecker release];
        }
        BOOL delay = natStatusChanged || tr_sessionIsPortForwardingEnabled(fHandle);
        fPortChecker = [[PortChecker alloc] initForPort: fPeerPort delay: delay withDelegate: self];
    }
}

- (void) portCheckerDidFinishProbing: (PortChecker *) portChecker
{
    [fPortStatusProgress stopAnimation: self];
    switch ([fPortChecker status])
    {
        case PORT_STATUS_OPEN:
            [fPortStatusField setStringValue: NSLocalizedString(@"Port is open", "Preferences -> Network -> port status")];
            [fPortStatusImage setImage: [NSImage imageNamed: @"GreenDot.png"]];
            break;
        case PORT_STATUS_CLOSED:
            [fPortStatusField setStringValue: NSLocalizedString(@"Port is closed", "Preferences -> Network -> port status")];
            [fPortStatusImage setImage: [NSImage imageNamed: @"RedDot.png"]];
            break;
        case PORT_STATUS_ERROR:
            [fPortStatusField setStringValue: NSLocalizedString(@"Port check site is down", "Preferences -> Network -> port status")];
            [fPortStatusImage setImage: [NSImage imageNamed: @"YellowDot.png"]];
            break;
    }
    [fPortChecker release];
    fPortChecker = nil;
}

- (NSArray *) sounds
{
    NSMutableArray * sounds = [NSMutableArray array];
    
    NSMutableArray * directories = [NSMutableArray arrayWithObjects: @"/System/Library/Sounds", @"/Library/Sounds", nil];
    if ([NSApp isOnLeopardOrBetter])
        [directories addObject: [NSHomeDirectory() stringByAppendingPathComponent: @"Library/Sounds"]];
    
    BOOL isDirectory;
    NSString * directory;
    NSEnumerator * enumerator = [directories objectEnumerator];
    while ((directory = [enumerator nextObject]))
        if ([[NSFileManager defaultManager] fileExistsAtPath: directory isDirectory: &isDirectory] && isDirectory)
        {
            NSString * sound;
            NSEnumerator * soundEnumerator = [[[NSFileManager defaultManager] directoryContentsAtPath: directory] objectEnumerator];
            while ((sound = [soundEnumerator nextObject]))
            {
                sound = [sound stringByDeletingPathExtension];
                if ([NSSound soundNamed: sound])
                    [sounds addObject: sound];
            }
        }
    
    return sounds;
}

- (void) setSound: (id) sender
{
    //play sound when selecting
    NSSound * sound;
    if ((sound = [NSSound soundNamed: [sender titleOfSelectedItem]]))
        [sound play];
}

- (void) setPeersGlobal: (id) sender
{
    int count = [sender intValue];
    [fDefaults setInteger: count forKey: @"PeersTotal"];
    tr_sessionSetPeerLimit(fHandle, count);
}

- (void) setPeersTorrent: (id) sender
{
    int count = [sender intValue];
    [fDefaults setInteger: count forKey: @"PeersTorrent"];
}

- (void) setPEX: (id) sender
{
    tr_sessionSetPexEnabled(fHandle, [fDefaults boolForKey: @"PEXGlobal"]);
}

- (void) setEncryptionMode: (id) sender
{
    tr_sessionSetEncryption(fHandle, [fDefaults boolForKey: @"EncryptionPrefer"] ? 
        ([fDefaults boolForKey: @"EncryptionRequire"] ? TR_ENCRYPTION_REQUIRED : TR_ENCRYPTION_PREFERRED) : TR_CLEAR_PREFERRED);
}

- (void) setBlocklistEnabled: (id) sender
{
    BOOL enable = [sender state] == NSOnState;
    [fDefaults setBool: enable forKey: @"Blocklist"];
    tr_blocklistSetEnabled(fHandle, enable);
    
    [[BlocklistScheduler scheduler] updateSchedule];
}

- (void) updateBlocklist: (id) sender
{
    [BlocklistDownloaderViewController downloadWithPrefsController: self];
}

- (void) setBlocklistAutoUpdate: (id) sender
{
    [[BlocklistScheduler scheduler] updateSchedule];
}

- (void) updateBlocklistFields
{
    BOOL exists = tr_blocklistExists(fHandle);
    
    if (exists)
    {
        NSNumberFormatter * numberFormatter = [[NSNumberFormatter alloc] init];
        [numberFormatter setNumberStyle: NSNumberFormatterDecimalStyle];
        [numberFormatter setMaximumFractionDigits: 0];
        NSString * countString = [numberFormatter stringFromNumber: [NSNumber numberWithInt: tr_blocklistGetRuleCount(fHandle)]];
        [numberFormatter release];
        
        [fBlocklistMessageField setStringValue: [NSString stringWithFormat: NSLocalizedString(@"%@ IP address rules in list",
            "Prefs -> blocklist -> message"), countString]];
    }
    else 
        [fBlocklistMessageField setStringValue: NSLocalizedString(@"A blocklist must first be downloaded",
            "Prefs -> blocklist -> message")];
    
    [fBlocklistEnableCheck setEnabled: exists];
    [fBlocklistEnableCheck setState: exists && [fDefaults boolForKey: @"Blocklist"]];
    
    NSString * updatedDateString;
    if (exists)
    {
        NSDate * updatedDate = [fDefaults objectForKey: @"BlocklistLastUpdate"];
        if (updatedDate)
        {
            NSDateFormatter * dateFormatter = [[NSDateFormatter alloc] init];
            [dateFormatter setDateStyle: NSDateFormatterFullStyle];
            [dateFormatter setTimeStyle: NSDateFormatterShortStyle];
            
            updatedDateString = [dateFormatter stringFromDate: updatedDate];
            [dateFormatter release];
        }
        else
            updatedDateString = NSLocalizedString(@"N/A", "Prefs -> blocklist -> message");
    }
    else
        updatedDateString = NSLocalizedString(@"Never", "Prefs -> blocklist -> message");
    
    [fBlocklistDateField setStringValue: [NSString stringWithFormat: @"%@: %@",
        NSLocalizedString(@"Last updated", "Prefs -> blocklist -> message"), updatedDateString]];
}

- (void) applySpeedSettings: (id) sender
{
    if ([fDefaults boolForKey: @"SpeedLimit"])
    {
        tr_sessionSetSpeedLimitEnabled(fHandle, TR_UP, 1);
        tr_sessionSetSpeedLimit(fHandle, TR_UP, [fDefaults integerForKey: @"SpeedLimitUploadLimit"]);
        
        tr_sessionSetSpeedLimitEnabled(fHandle, TR_DOWN, 1);
        tr_sessionSetSpeedLimit(fHandle, TR_DOWN, [fDefaults integerForKey: @"SpeedLimitDownloadLimit"]);
    }
    else
    {
        tr_sessionSetSpeedLimitEnabled(fHandle, TR_UP, [fDefaults boolForKey: @"CheckUpload"]);
        tr_sessionSetSpeedLimit(fHandle, TR_UP, [fDefaults integerForKey: @"UploadLimit"]);
        
        tr_sessionSetSpeedLimitEnabled(fHandle, TR_DOWN, [fDefaults boolForKey: @"CheckDownload"]);
        tr_sessionSetSpeedLimit(fHandle, TR_DOWN, [fDefaults integerForKey: @"DownloadLimit"]);
    }
}

- (void) applyRatioSetting: (id) sender
{
    [[NSNotificationCenter defaultCenter] postNotificationName: @"UpdateUI" object: nil];
}

- (void) updateRatioStopField
{
    if (!fHasLoaded)
        return;
    
    [fRatioStopField setFloatValue: [fDefaults floatForKey: @"RatioLimit"]];
    
    [self applyRatioSetting: nil];
}

- (void) setRatioStop: (id) sender
{
    [fDefaults setFloat: [sender floatValue] forKey: @"RatioLimit"];
    [self applyRatioSetting: nil];
}

- (void) updateLimitFields
{
    if (!fHasLoaded)
        return;
    
    [fUploadField setIntValue: [fDefaults integerForKey: @"UploadLimit"]];
    [fDownloadField setIntValue: [fDefaults integerForKey: @"DownloadLimit"]];
}

- (void) setGlobalLimit: (id) sender
{
    [fDefaults setInteger: [sender intValue] forKey: sender == fUploadField ? @"UploadLimit" : @"DownloadLimit"];
    [self applySpeedSettings: self];
}

- (void) setSpeedLimit: (id) sender
{
    [fDefaults setInteger: [sender intValue] forKey: sender == fSpeedLimitUploadField
                                                        ? @"SpeedLimitUploadLimit" : @"SpeedLimitDownloadLimit"];
    [self applySpeedSettings: self];
}

- (void) setAutoSpeedLimit: (id) sender
{
    [[NSNotificationCenter defaultCenter] postNotificationName: @"AutoSpeedLimitChange" object: self];
}

- (BOOL) control: (NSControl *) control textShouldBeginEditing: (NSText *) fieldEditor
{
    [fInitialString release];
    fInitialString = [[control stringValue] retain];
    
    return YES;
}

- (BOOL) control: (NSControl *) control didFailToFormatString: (NSString *) string errorDescription: (NSString *) error
{
    NSBeep();
    if (fInitialString)
    {
        [control setStringValue: fInitialString];
        [fInitialString release];
        fInitialString = nil;
    }
    return NO;
}

- (void) setBadge: (id) sender
{
    [[NSNotificationCenter defaultCenter] postNotificationName: @"DockBadgeChange" object: self];
}

- (void) resetWarnings: (id) sender
{
    [fDefaults removeObjectForKey: @"WarningDuplicate"];
    [fDefaults removeObjectForKey: @"WarningRemainingSpace"];
    [fDefaults removeObjectForKey: @"WarningFolderDataSameName"];
    [fDefaults removeObjectForKey: @"WarningResetStats"];
    [fDefaults removeObjectForKey: @"WarningCreatorBlankAddress"];
    [fDefaults removeObjectForKey: @"WarningRemoveBuiltInTracker"];
    [fDefaults removeObjectForKey: @"WarningInvalidOpen"];
}

- (void) setQueue: (id) sender
{
    [[NSNotificationCenter defaultCenter] postNotificationName: @"UpdateQueue" object: self];
}

- (void) setQueueNumber: (id) sender
{
    [fDefaults setInteger: [sender intValue] forKey: sender == fQueueDownloadField ? @"QueueDownloadNumber" : @"QueueSeedNumber"];
    [self setQueue: nil];
}

- (void) setStalled: (id) sender
{
    [[NSNotificationCenter defaultCenter] postNotificationName: @"UpdateQueue" object: self];
}

- (void) setStalledMinutes: (id) sender
{
    [fDefaults setInteger: [sender intValue] forKey: @"StalledMinutes"];
    [self setStalled: nil];
}

- (void) setDownloadLocation: (id) sender
{
    [fDefaults setBool: [fFolderPopUp indexOfSelectedItem] == DOWNLOAD_FOLDER forKey: @"DownloadLocationConstant"];
}

- (void) folderSheetShow: (id) sender
{
    NSOpenPanel * panel = [NSOpenPanel openPanel];

    [panel setPrompt: NSLocalizedString(@"Select", "Preferences -> Open panel prompt")];
    [panel setAllowsMultipleSelection: NO];
    [panel setCanChooseFiles: NO];
    [panel setCanChooseDirectories: YES];
    [panel setCanCreateDirectories: YES];

    [panel beginSheetForDirectory: nil file: nil types: nil
        modalForWindow: [self window] modalDelegate: self didEndSelector:
        @selector(folderSheetClosed:returnCode:contextInfo:) contextInfo: nil];
}

- (void) incompleteFolderSheetShow: (id) sender
{
    NSOpenPanel * panel = [NSOpenPanel openPanel];

    [panel setPrompt: NSLocalizedString(@"Select", "Preferences -> Open panel prompt")];
    [panel setAllowsMultipleSelection: NO];
    [panel setCanChooseFiles: NO];
    [panel setCanChooseDirectories: YES];
    [panel setCanCreateDirectories: YES];

    [panel beginSheetForDirectory: nil file: nil types: nil
        modalForWindow: [self window] modalDelegate: self didEndSelector:
        @selector(incompleteFolderSheetClosed:returnCode:contextInfo:) contextInfo: nil];
}

- (void) setAutoImport: (id) sender
{
    NSString * path;
    if ((path = [fDefaults stringForKey: @"AutoImportDirectory"]))
    {
        path = [path stringByExpandingTildeInPath];
        if ([fDefaults boolForKey: @"AutoImport"])
            [[UKKQueue sharedFileWatcher] addPath: path];
        else
            [[UKKQueue sharedFileWatcher] removePathFromQueue: path];
        
        [[NSNotificationCenter defaultCenter] postNotificationName: @"AutoImportSettingChange" object: self];
    }
    else
        [self importFolderSheetShow: nil];
}

- (void) importFolderSheetShow: (id) sender
{
    NSOpenPanel * panel = [NSOpenPanel openPanel];

    [panel setPrompt: NSLocalizedString(@"Select", "Preferences -> Open panel prompt")];
    [panel setAllowsMultipleSelection: NO];
    [panel setCanChooseFiles: NO];
    [panel setCanChooseDirectories: YES];
    [panel setCanCreateDirectories: YES];

    [panel beginSheetForDirectory: nil file: nil types: nil
        modalForWindow: [self window] modalDelegate: self didEndSelector:
        @selector(importFolderSheetClosed:returnCode:contextInfo:) contextInfo: nil];
}

- (void) setAutoSize: (id) sender
{
    [[NSNotificationCenter defaultCenter] postNotificationName: @"AutoSizeSettingChange" object: self];
}

- (void) setProxyEnabled: (id) sender
{
    tr_sessionSetProxyEnabled(fHandle, [fDefaults boolForKey: @"Proxy"]);
}

- (void) setProxyAddress: (id) sender
{
    NSString * address = [sender stringValue];
    tr_sessionSetProxy(fHandle, [address UTF8String]);
    [fDefaults setObject: address forKey: @"ProxyAddress"];
}

- (void) setProxyPort: (id) sender
{
    int port = [sender intValue];
    [fDefaults setInteger: port forKey: @"ProxyPort"];
    tr_sessionSetProxyPort(fHandle, port);
}

- (void) setProxyType: (id) sender
{
    NSString * type;
    switch ([sender indexOfSelectedItem])
    {
        case PROXY_HTTP:
            type = @"HTTP";
            break;
        case PROXY_SOCKS4:
            type = @"SOCKS4";
            break;
        case PROXY_SOCKS5:
            type = @"SOCKS5";
    }
    
    [fDefaults setObject: type forKey: @"ProxyType"];
    [self updateProxyType];
}

- (void) updateProxyType
{
    NSString * typeString = [fDefaults stringForKey: @"ProxyType"];
    tr_proxy_type type;
    if ([typeString isEqualToString: @"SOCKS4"])
        type = TR_PROXY_SOCKS4;
    else if ([typeString isEqualToString: @"SOCKS5"])
        type = TR_PROXY_SOCKS5;
    else
    {
        //safety
        if (![typeString isEqualToString: @"HTTP"])
        {
            typeString = @"HTTP";
            [fDefaults setObject: typeString forKey: @"ProxyType"];
        }
        type = TR_PROXY_HTTP;
    }
    
    tr_sessionSetProxyType(fHandle, type);
}

- (void) setProxyAuthorize: (id) sender
{
    BOOL enable = [fDefaults boolForKey: @"ProxyAuthorize"];
    tr_sessionSetProxyAuthEnabled(fHandle, enable);
}

- (void) setProxyUsername: (id) sender
{
    tr_sessionSetProxyUsername(fHandle, [[fDefaults stringForKey: @"ProxyUsername"] UTF8String]);
}

- (void) setProxyPassword: (id) sender
{
    const char * password = [[sender stringValue] UTF8String];
    [self setKeychainPassword: password forService: PROXY_KEYCHAIN_SERVICE username: PROXY_KEYCHAIN_NAME];
    
    tr_sessionSetProxyPassword(fHandle, password);
}

- (void) updateProxyPassword
{
    UInt32 passwordLength;
    const char * password = nil;
    SecKeychainFindGenericPassword(NULL, strlen(PROXY_KEYCHAIN_SERVICE), PROXY_KEYCHAIN_SERVICE,
        strlen(PROXY_KEYCHAIN_NAME), PROXY_KEYCHAIN_NAME, &passwordLength, (void **)&password, NULL);
    
    if (password != NULL)
    {
        char fullPassword[passwordLength+1];
        strncpy(fullPassword, password, passwordLength);
        fullPassword[passwordLength] = '\0';
        SecKeychainItemFreeContent(NULL, (void *)password);
        
        tr_sessionSetProxyPassword(fHandle, fullPassword);
        [fProxyPasswordField setStringValue: [NSString stringWithUTF8String: fullPassword]];
    }
}

- (void) setRPCEnabled: (id) sender
{
    tr_sessionSetRPCEnabled(fHandle, [fDefaults boolForKey: @"RPC"]);
}

- (void) linkWebUI: (id) sender
{
    NSString * urlString = [NSString stringWithFormat: WEBUI_URL, [fDefaults integerForKey: @"RPCPort"]];
    [[NSWorkspace sharedWorkspace] openURL: [NSURL URLWithString: urlString]];
}

- (void) setRPCAuthorize: (id) sender
{
    tr_sessionSetRPCPasswordEnabled(fHandle, [fDefaults boolForKey: @"RPCAuthorize"]);
}

- (void) setRPCUsername: (id) sender
{
    tr_sessionSetRPCUsername(fHandle, [[fDefaults stringForKey: @"RPCUsername"] UTF8String]);
}

- (void) setRPCPassword: (id) sender
{
    const char * password = [[sender stringValue] UTF8String];
    [self setKeychainPassword: password forService: RPC_KEYCHAIN_SERVICE username: RPC_KEYCHAIN_NAME];
    
    tr_sessionSetRPCPassword(fHandle, password);
}

- (void) updateRPCPassword
{
    UInt32 passwordLength;
    const char * password = nil;
    SecKeychainFindGenericPassword(NULL, strlen(RPC_KEYCHAIN_SERVICE), RPC_KEYCHAIN_SERVICE,
        strlen(RPC_KEYCHAIN_NAME), RPC_KEYCHAIN_NAME, &passwordLength, (void **)&password, NULL);
    
    if (password != NULL)
    {
        char fullPassword[passwordLength+1];
        strncpy(fullPassword, password, passwordLength);
        fullPassword[passwordLength] = '\0';
        SecKeychainItemFreeContent(NULL, (void *)password);
        
        tr_sessionSetRPCPassword(fHandle, fullPassword);
        [fRPCPasswordField setStringValue: [NSString stringWithUTF8String: fullPassword]];
    }
}

- (void) setRPCPort: (id) sender
{
    int port = [sender intValue];
    [fDefaults setInteger: port forKey: @"RPCPort"];
    tr_sessionSetRPCPort(fHandle, port);
}

- (void) setRPCUseWhitelist: (id) sender
{
    tr_sessionSetRPCWhitelistEnabled(fHandle, [fDefaults boolForKey: @"RPCUseWhitelist"]);
}

- (void) updateRPCWhitelist
{
    NSString * string = [fRPCWhitelistArray componentsJoinedByString: @","];
    tr_sessionSetRPCWhitelist(fHandle, [string UTF8String]);
}

- (void) addRemoveRPCIP: (id) sender
{
    //don't allow add/remove when currently adding - it leads to weird results
    if ([fRPCWhitelistTable editedRow] != -1)
        return;
    
    if ([[sender cell] tagForSegment: [sender selectedSegment]] == RPC_IP_REMOVE_TAG)
    {
        [fRPCWhitelistArray removeObjectsAtIndexes: [fRPCWhitelistTable selectedRowIndexes]];
        [fRPCWhitelistTable deselectAll: self];
        [fRPCWhitelistTable reloadData];
        
        [fDefaults setObject: fRPCWhitelistArray forKey: @"RPCWhitelist"];
        [self updateRPCWhitelist];
    }
    else
    {
        [fRPCWhitelistArray addObject: @""];
        [fRPCWhitelistTable reloadData];
        
        int row = [fRPCWhitelistArray count] - 1;
        [fRPCWhitelistTable selectRow: row byExtendingSelection: NO];
        [fRPCWhitelistTable editColumn: 0 row: row withEvent: nil select: YES];
    }
}

- (NSInteger) numberOfRowsInTableView: (NSTableView *) tableView
{
    return [fRPCWhitelistArray count];
}

- (id) tableView: (NSTableView *) tableView objectValueForTableColumn: (NSTableColumn *) tableColumn row: (NSInteger) row
{
    return [fRPCWhitelistArray objectAtIndex: row];
}

- (void) tableView: (NSTableView *) tableView setObjectValue: (id) object forTableColumn: (NSTableColumn *) tableColumn
    row: (NSInteger) row
{
    NSArray * components = [object componentsSeparatedByString: @"."];
    NSMutableArray * newComponents = [NSMutableArray arrayWithCapacity: 4];
        
    //create better-formatted ip string
    BOOL valid = false;
    if ([components count] == 4)
    {
        valid = true;
        NSEnumerator * enumerator = [components objectEnumerator];
        NSString * component;
        while ((component = [enumerator nextObject]))
        {
            if ([component isEqualToString: @"*"])
                [newComponents addObject: component];
            else
            {
                int num = [component intValue];
                if (num >= 0 && num < 256)
                    [newComponents addObject: [[NSNumber numberWithInt: num] stringValue]];
                else
                {
                    valid = false;
                    break;
                }
            }
        }
    }
    
    NSString * newIP;
    if (valid)
    {
        newIP = [newComponents componentsJoinedByString: @"."];
        
        //don't allow the same ip address
        if ([fRPCWhitelistArray containsObject: newIP] && ![[fRPCWhitelistArray objectAtIndex: row] isEqualToString: newIP])
            valid = false;
    }
    
    if (valid)
    {
        [fRPCWhitelistArray replaceObjectAtIndex: row withObject: newIP];
        [fRPCWhitelistArray sortUsingSelector: @selector(compareNumeric:)];
    }
    else
    {
        NSBeep();
        if ([[fRPCWhitelistArray objectAtIndex: row] isEqualToString: @""])
            [fRPCWhitelistArray removeObjectAtIndex: row];
    }
        
    [fRPCWhitelistTable deselectAll: self];
    [fRPCWhitelistTable reloadData];
    
    [fDefaults setObject: fRPCWhitelistArray forKey: @"RPCWhitelist"];
    [self updateRPCWhitelist];
}

- (void) tableViewSelectionDidChange: (NSNotification *) notification
{
    [fRPCAddRemoveControl setEnabled: [fRPCWhitelistTable numberOfSelectedRows] > 0 forSegment: RPC_IP_REMOVE_TAG];
}

- (void) helpForPeers: (id) sender
{
    [[NSHelpManager sharedHelpManager] openHelpAnchor: @"PeersPrefs"
        inBook: [[NSBundle mainBundle] objectForInfoDictionaryKey: @"CFBundleHelpBookName"]];
}

- (void) helpForNetwork: (id) sender
{
    [[NSHelpManager sharedHelpManager] openHelpAnchor: @"NetworkPrefs"
        inBook: [[NSBundle mainBundle] objectForInfoDictionaryKey: @"CFBundleHelpBookName"]];
}

- (void) helpForRemote: (id) sender
{
    [[NSHelpManager sharedHelpManager] openHelpAnchor: @"RemotePrefs"
        inBook: [[NSBundle mainBundle] objectForInfoDictionaryKey: @"CFBundleHelpBookName"]];
}

- (void) rpcUpdatePrefs
{
    //encryption
    tr_encryption_mode encryptionMode = tr_sessionGetEncryption(fHandle);
    [fDefaults setBool: encryptionMode != TR_CLEAR_PREFERRED forKey: @"EncryptionPrefer"];
    [fDefaults setBool: encryptionMode == TR_ENCRYPTION_REQUIRED forKey: @"EncryptionRequire"];
    
    //download directory
    NSString * downloadLocation = [[NSString stringWithUTF8String: tr_sessionGetDownloadDir(fHandle)] stringByStandardizingPath];
    [fDefaults setObject: downloadLocation forKey: @"DownloadFolder"];
    
    //peers
    uint16_t peersTotal = tr_sessionGetPeerLimit(fHandle);
    [fDefaults setInteger: peersTotal forKey: @"PeersTotal"];
    
    //pex
    BOOL pex = tr_sessionIsPexEnabled(fHandle);
    [fDefaults setBool: pex forKey: @"PEXGlobal"];
    
    //port
    int port = tr_sessionGetPeerPort(fHandle);
    [fDefaults setInteger: port forKey: @"BindPort"];
    
    BOOL nat = tr_sessionIsPortForwardingEnabled(fHandle);
    [fDefaults setBool: nat forKey: @"NatTraversal"];
    
    fPeerPort = -1;
    fNatStatus = -1;
    [self updatePortStatus];
    
    //speed limit - down
    BOOL downLimitEnabled = tr_sessionIsSpeedLimitEnabled(fHandle, TR_DOWN);
    [fDefaults setBool: downLimitEnabled forKey: @"CheckDownload"];
    
    int downLimit = tr_sessionGetSpeedLimit(fHandle, TR_DOWN);
    [fDefaults setInteger: downLimit forKey: @"DownloadLimit"];
    
    //speed limit - up
    BOOL upLimitEnabled = tr_sessionIsSpeedLimitEnabled(fHandle, TR_UP);
    [fDefaults setBool: upLimitEnabled forKey: @"CheckUpload"];
    
    int upLimit = tr_sessionGetSpeedLimit(fHandle, TR_UP);
    [fDefaults setInteger: upLimit forKey: @"UploadLimit"];
    
    //update gui if loaded
    if (fHasLoaded)
    {
        //encryption handled by bindings
        
        //download directory handled by bindings
        
        [fPeersGlobalField setIntValue: peersTotal];
        
        //pex handled by bindings
        
        [fPortField setIntValue: port];
        //port forwarding (nat) handled by bindings
        
        //limit check handled by bindings
        [fDownloadField setIntValue: downLimit];
        
        //limit check handled by bindings
        [fUploadField setIntValue: upLimit];
    }
}

@end

@implementation PrefsController (Private)

- (void) setPrefView: (id) sender
{
    NSView * view = fGeneralView;
    if (sender)
    {
        NSString * identifier = [sender itemIdentifier];
        if ([identifier isEqualToString: TOOLBAR_TRANSFERS])
            view = fTransfersView;
        else if ([identifier isEqualToString: TOOLBAR_BANDWIDTH])
            view = fBandwidthView;
        else if ([identifier isEqualToString: TOOLBAR_PEERS])
            view = fPeersView;
        else if ([identifier isEqualToString: TOOLBAR_NETWORK])
            view = fNetworkView;
        else if ([identifier isEqualToString: TOOLBAR_REMOTE])
            view = fRemoteView;
        else; //general view already selected
    }
    
    NSWindow * window = [self window];
    if ([window contentView] == view)
        return;
    
    NSRect windowRect = [window frame];
    float difference = ([view frame].size.height - [[window contentView] frame].size.height) * [window userSpaceScaleFactor];
    windowRect.origin.y -= difference;
    windowRect.size.height += difference;
    
    [view setHidden: YES];
    [window setContentView: view];
    [window setFrame: windowRect display: YES animate: YES];
    [view setHidden: NO];
    
    //set title label
    if (sender)
        [window setTitle: [sender label]];
    else
    {
        NSToolbar * toolbar = [window toolbar];
        NSString * itemIdentifier = [toolbar selectedItemIdentifier];
        NSEnumerator * enumerator = [[toolbar items] objectEnumerator];
        NSToolbarItem * item;
        while ((item = [enumerator nextObject]))
            if ([[item itemIdentifier] isEqualToString: itemIdentifier])
            {
                [window setTitle: [item label]];
                break;
            }
    }
    
    //for network view make sure progress indicator hides itself (get around a Tiger bug)
    if (![NSApp isOnLeopardOrBetter] && view == fNetworkView && [fPortStatusImage image])
        [fPortStatusProgress setDisplayedWhenStopped: NO];
}

- (void) folderSheetClosed: (NSOpenPanel *) openPanel returnCode: (int) code contextInfo: (void *) info
{
    if (code == NSOKButton)
    {
        [fFolderPopUp selectItemAtIndex: DOWNLOAD_FOLDER];
        [fDefaults setObject: [[openPanel filenames] objectAtIndex: 0] forKey: @"DownloadFolder"];
        [fDefaults setObject: @"Constant" forKey: @"DownloadChoice"];
    }
    else
    {
        //reset if cancelled
        [fFolderPopUp selectItemAtIndex: [fDefaults boolForKey: @"DownloadLocationConstant"] ? DOWNLOAD_FOLDER : DOWNLOAD_TORRENT];
    }
}

- (void) incompleteFolderSheetClosed: (NSOpenPanel *) openPanel returnCode: (int) code contextInfo: (void *) info
{
    if (code == NSOKButton)
        [fDefaults setObject: [[openPanel filenames] objectAtIndex: 0] forKey: @"IncompleteDownloadFolder"];
    [fIncompleteFolderPopUp selectItemAtIndex: 0];
}

- (void) importFolderSheetClosed: (NSOpenPanel *) openPanel returnCode: (int) code contextInfo: (void *) info
{
    NSString * path = [fDefaults stringForKey: @"AutoImportDirectory"];
    if (code == NSOKButton)
    {
        UKKQueue * sharedQueue = [UKKQueue sharedFileWatcher];
        if (path)
            [sharedQueue removePathFromQueue: [path stringByExpandingTildeInPath]];
        
        path = [[openPanel filenames] objectAtIndex: 0];
        [fDefaults setObject: path forKey: @"AutoImportDirectory"];
        [sharedQueue addPath: [path stringByExpandingTildeInPath]];
        
        [[NSNotificationCenter defaultCenter] postNotificationName: @"AutoImportSettingChange" object: self];
    }
    else if (!path)
        [fDefaults setBool: NO forKey: @"AutoImport"];
    
    [fImportFolderPopUp selectItemAtIndex: 0];
}

- (void) setKeychainPassword: (const char *) password forService: (const char *) service username: (const char *) username
{
    SecKeychainItemRef item = NULL;
    NSUInteger passwordLength = strlen(password);
    
    OSStatus result = SecKeychainFindGenericPassword(NULL, strlen(service), service, strlen(username), username, NULL, NULL, &item);
    if (result == noErr && item)
    {
        if (passwordLength > 0) //found, so update
        {
            result = SecKeychainItemModifyAttributesAndData(item, NULL, passwordLength, (const void *)password);
            if (result != noErr)
                NSLog(@"Problem updating Keychain item: %s", GetMacOSStatusErrorString(result));
        }
        else //remove the item
        {
            result = SecKeychainItemDelete(item);
            if (result != noErr)
                NSLog(@"Problem removing Keychain item: %s", GetMacOSStatusErrorString(result));
        }
    }
    else if (result == errSecItemNotFound) //not found, so add
    {
        if (passwordLength > 0)
        {
            result = SecKeychainAddGenericPassword(NULL, strlen(service), service, strlen(username), username,
                        passwordLength, (const void *)password, NULL);
            if (result != noErr)
                NSLog(@"Problem adding Keychain item: %s", GetMacOSStatusErrorString(result));
        }
    }
    else
        NSLog(@"Problem accessing Keychain: %s", GetMacOSStatusErrorString(result));
}

@end
