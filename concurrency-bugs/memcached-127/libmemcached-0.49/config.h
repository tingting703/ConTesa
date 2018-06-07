/* config.h.  Generated from config.h.in by configure.  */
/* config.h.in.  Generated from configure.ac by autoheader.  */


#ifndef __CONFIG_H__
#define __CONFIG_H__

/* _SYS_FEATURE_TESTS_H is Solaris, _FEATURES_H is GCC */
#if defined( _SYS_FEATURE_TESTS_H) || defined(_FEATURES_H)
#error "You should include config.h as your first include file"
#endif

#include <config/top.h>



#ifndef CONFIG_H
#define CONFIG_H

#ifdef _SYS_FEATURE_TESTS_H
#error "You should include config.h as your first include file"
#endif

#ifdef WIN32
#define _WIN32_WINNT 0x0501
#endif


/* Define if building universal (internal helper macro) */
/* #undef AC_APPLE_UNIVERSAL_BUILD */

/* the location of <cinttypes> */
#define CINTTYPES_H <tr1/cinttypes>

/* the location of <cstdint> */
#define CSTDINT_H <tr1/cstdint>

/* Another magical number */
/* #undef EAI_SYSTEM */

/* Define to 1 if you have the <assert.h> header file. */
#define HAVE_ASSERT_H 1

/* Define to 1 if you have the `atomic_add_32' function. */
/* #undef HAVE_ATOMIC_ADD_32 */

/* Define to 1 if you have the `atomic_add_64' function. */
/* #undef HAVE_ATOMIC_ADD_64 */

/* Define to 1 if you have the <atomic.h> header file. */
/* #undef HAVE_ATOMIC_H */

/* Define to 1 if you have the `backtrace' function. */
#define HAVE_BACKTRACE 1

/* Define to 1 if you have the `backtrace_symbols_fd' function. */
#define HAVE_BACKTRACE_SYMBOLS_FD 1

/* Have a working clock_gettime function */
#define HAVE_CLOCK_GETTIME 1

/* Define to 1 if you have the declaration of `madvise', and to 0 if you
   don't. */
#define HAVE_DECL_MADVISE 0

/* Define to 1 if you have the <dlfcn.h> header file. */
#define HAVE_DLFCN_H 1

/* Enables DTRACE Support */
/* #undef HAVE_DTRACE */

/* Define to 1 if you have the `event_base_free' function. */
#define HAVE_EVENT_BASE_FREE 1

/* Define to 1 if you have the `event_base_get_method' function. */
#define HAVE_EVENT_BASE_GET_METHOD 1

/* Define to 1 if you have the `event_base_new' function. */
#define HAVE_EVENT_BASE_NEW 1

/* Define to 1 if you have the <execinfo.h> header file. */
#define HAVE_EXECINFO_H 1

/* Define to 1 if you have the <fnmatch.h> header file. */
#define HAVE_FNMATCH_H 1

/* Define to 1 if compiler provides atomic builtins. */
#define HAVE_GCC_ATOMIC_BUILTINS 1

/* Define to 1 if you have the `getline' function. */
#define HAVE_GETLINE 1

/* Enables hsieh hashing support */
/* #undef HAVE_HSIEH_HASH */

/* Have ntohll */
/* #undef HAVE_HTONLL */

/* Define to 1 if you have the <inttypes.h> header file. */
#define HAVE_INTTYPES_H 1

/* Define to 1 if you have the `bind' library (-lbind). */
/* #undef HAVE_LIBBIND */

/* Define to 1 if you have the `c_p' library (-lc_p). */
/* #undef HAVE_LIBC_P */

/* Define if you have the event library. */
#define HAVE_LIBEVENT 1

/* Define if you have the innodb library. */
/* #undef HAVE_LIBINNODB */

/* Enables libmemcachedutil Support */
#define HAVE_LIBMEMCACHEDUTIL 1

/* Define to 1 if you have the `mtmalloc' library (-lmtmalloc). */
/* #undef HAVE_LIBMTMALLOC */

/* Define if you have the sasl library. */
/* #undef HAVE_LIBSASL */

/* Define if you have the sasl2 library. */
#define HAVE_LIBSASL2 1

/* Define to 1 if you have the `socket' library (-lsocket). */
/* #undef HAVE_LIBSOCKET */

/* Define to 1 if you have the `tcmalloc' library (-ltcmalloc). */
/* #undef HAVE_LIBTCMALLOC */

/* Define to 1 if you have the `tcmalloc-minimal' library
   (-ltcmalloc-minimal). */
/* #undef HAVE_LIBTCMALLOC_MINIMAL */

/* Define to 1 if you have the `umem' library (-lumem). */
/* #undef HAVE_LIBUMEM */

/* Define to 1 if you have the <memory.h> header file. */
#define HAVE_MEMORY_H 1

/* Define to 1 if you have a MSG_DONTWAIT */
#define HAVE_MSG_DONTWAIT 1

/* Define to 1 if you have a HAVE_MSG_MORE */
#define HAVE_MSG_MORE 1

/* Define to 1 if you have a MSG_NOSIGNAL */
#define HAVE_MSG_NOSIGNAL 1

/* Enables murmur hashing support */
#define HAVE_MURMUR_HASH 1

/* For some non posix threads */
/* #undef HAVE_NONPOSIX_PTHREAD_GETSPECIFIC */

/* For some non posix threads */
/* #undef HAVE_NONPOSIX_PTHREAD_MUTEX_INIT */

/* sigwait with one argument */
/* #undef HAVE_NONPOSIX_SIGWAIT */

/* Define to 1 if you have the <poll.h> header file. */
#define HAVE_POLL_H 1

/* Define to 1 if you have the `printstack' function. */
/* #undef HAVE_PRINTSTACK */

/* Define if you have POSIX threads libraries and header files. */
#define HAVE_PTHREAD 1

/* Define to 1 if you have the `pthread_attr_create' function. */
/* #undef HAVE_PTHREAD_ATTR_CREATE */

/* Define to 1 if you have the `pthread_attr_getstacksize' function. */
#define HAVE_PTHREAD_ATTR_GETSTACKSIZE 1

/* Define to 1 if you have the `pthread_attr_setprio' function. */
/* #undef HAVE_PTHREAD_ATTR_SETPRIO */

/* Define to 1 if you have the `pthread_attr_setschedparam' function. */
#define HAVE_PTHREAD_ATTR_SETSCHEDPARAM 1

/* pthread_attr_setscope */
#define HAVE_PTHREAD_ATTR_SETSCOPE 1

/* Define to 1 if you have the `pthread_attr_setstacksize' function. */
#define HAVE_PTHREAD_ATTR_SETSTACKSIZE 1

/* Define to 1 if you have the `pthread_condattr_create' function. */
/* #undef HAVE_PTHREAD_CONDATTR_CREATE */

/* Define to 1 if you have the `pthread_getsequence_np' function. */
/* #undef HAVE_PTHREAD_GETSEQUENCE_NP */

/* Define to 1 if you have the `pthread_key_delete' function. */
#define HAVE_PTHREAD_KEY_DELETE 1

/* Define to 1 if you have the `pthread_rwlock_rdlock' function. */
#define HAVE_PTHREAD_RWLOCK_RDLOCK 1

/* Define to 1 if you have the `pthread_setprio' function. */
/* #undef HAVE_PTHREAD_SETPRIO */

/* Define to 1 if you have the `pthread_setprio_np' function. */
/* #undef HAVE_PTHREAD_SETPRIO_NP */

/* Define to 1 if you have the `pthread_setschedparam' function. */
#define HAVE_PTHREAD_SETSCHEDPARAM 1

/* Define to 1 if you have the `pthread_sigmask' function. */
#define HAVE_PTHREAD_SIGMASK 1

/* Define to 1 if you have the `pthread_yield_np' function. */
/* #undef HAVE_PTHREAD_YIELD_NP */

/* pthread_yield function with one argument */
/* #undef HAVE_PTHREAD_YIELD_ONE_ARG */

/* pthread_yield that doesn't take any arguments */
#define HAVE_PTHREAD_YIELD_ZERO_ARG 1

/* Define to 1 if you have a working SO_RCVTIMEO */
#define HAVE_RCVTIMEO 1

/* POSIX readdir_r */
#define HAVE_READDIR_R 1

/* Define to 1 if you have the `rwlock_init' function. */
/* #undef HAVE_RWLOCK_INIT */

/* POSIX sigwait */
#define HAVE_SIGWAIT 1

/* Define to 1 if you have a working SO_SNDTIMEO */
#define HAVE_SNDTIMEO 1

/* Define to 1 if you have the <stdint.h> header file. */
#define HAVE_STDINT_H 1

/* Define to 1 if you have the <stdlib.h> header file. */
#define HAVE_STDLIB_H 1

/* Define to 1 if you have the <strings.h> header file. */
#define HAVE_STRINGS_H 1

/* Define to 1 if you have the <string.h> header file. */
#define HAVE_STRING_H 1

/* Define to 1 if you have the <sys/sdt.h> header file. */
/* #undef HAVE_SYS_SDT_H */

/* Define to 1 if you have the <sys/socket.h> header file. */
#define HAVE_SYS_SOCKET_H 1

/* Define to 1 if you have the <sys/stat.h> header file. */
#define HAVE_SYS_STAT_H 1

/* Define to 1 if you have the <sys/types.h> header file. */
#define HAVE_SYS_TYPES_H 1

/* Define to 1 if you have the <sys/wait.h> header file. */
#define HAVE_SYS_WAIT_H 1

/* Define to 1 if you have the <ucontext.h> header file. */
#define HAVE_UCONTEXT_H 1

/* Define to 1 if you have the <unistd.h> header file. */
#define HAVE_UNISTD_H 1

/* Add additional valgrind code for testing with valgrind. */
/* #undef HAVE_VALGRIND */

/* Define to 1 or 0, depending whether the compiler supports simple visibility
   declarations. */
#define HAVE_VISIBILITY 0

/* Define to 1 if you have the <winsock2.h> header file. */
/* #undef HAVE_WINSOCK2_H */

/* CPU of Build System */
#define HOST_CPU "x86_64"

/* OS of Build System */
#define HOST_OS "linux-gnu"

/* Vendor of Build System */
#define HOST_VENDOR "unknown"

/* Define to the sub-directory in which libtool stores uninstalled libraries.
   */
#define LT_OBJDIR ".libs/"

/* Name of the memcached binary used in make test */
#define MEMCACHED_BINARY "/home/tyu/Documents/concurrency-bugs/memcached-127/memcached-1.4.4/installed/bin/memcached"

/* Define to 1 if assertions should be disabled. */
/* #undef NDEBUG */

/* Define to 1 if your C compiler doesn't accept -c and -o together. */
/* #undef NO_MINUS_C_MINUS_O */

/* Name of package */
#define PACKAGE "libmemcached"

/* Define to the address where bug reports for this package should be sent. */
#define PACKAGE_BUGREPORT "http://libmemcached.org/"

/* Define to the full name of this package. */
#define PACKAGE_NAME "libmemcached"

/* Define to the full name and version of this package. */
#define PACKAGE_STRING "libmemcached 0.49"

/* Define to the one symbol short name of this package. */
#define PACKAGE_TARNAME "libmemcached"

/* Define to the home page for this package. */
#define PACKAGE_URL ""

/* Define to the version of this package. */
#define PACKAGE_VERSION "0.49"

/* Version of the software */
#define PANDORA_RELEASE_VERSION "0.49"

/* Define to necessary symbol if this constant uses a non-standard name on
   your system. */
/* #undef PTHREAD_CREATE_JOINABLE */

/* Define if system doesn't define */
/* #undef RUSAGE_THREAD */

/* Size of long long as computed by sizeof() */
#define SIZEOF_LONG_LONG 8

/* The size of `off_t', as computed by sizeof. */
#define SIZEOF_OFF_T 8

/* Size of size_t as computed by sizeof() */
#define SIZEOF_SIZE_T 8

/* Define if ISO C++ 1998 header files are present. */
#define STDCXX_98_HEADERS /**/

/* Define to 1 if you have the ANSI C header files. */
#define STDC_HEADERS 1

/* CPU of Target System */
#define TARGET_CPU "x86_64"

/* OS of Target System */
#define TARGET_OS "linux-gnu"

/* Whether we are building for FreeBSD */
/* #undef TARGET_OS_FREEBSD */

/* Whether we build for Linux */
#define TARGET_OS_LINUX 1

/* Whether we build for OSX */
/* #undef TARGET_OS_OSX */

/* Whether we are building for Solaris */
/* #undef TARGET_OS_SOLARIS */

/* Whether we are building for Windows */
/* #undef TARGET_OS_WINDOWS */

/* Vendor of Target System */
#define TARGET_VENDOR "unknown"

/* Define to 1 if time_t is unsigned */
/* #undef TIME_T_UNSIGNED */

/* Define to 1 if you can safely include both <sys/time.h> and <time.h>. */
#define TIME_WITH_SYS_TIME 1

/* Define to 1 if your <sys/time.h> declares `struct tm'. */
/* #undef TM_IN_SYS_TIME */

/* Define to true if you want to use functions from atomic.h */
/* #undef USE_ATOMIC_H */

/* Define to true if you need to test for eagain */
/* #undef USE_EAGAIN */

/* Enable extensions on AIX 3, Interix.  */
#ifndef _ALL_SOURCE
# define _ALL_SOURCE 1
#endif
/* Enable GNU extensions on systems that have them.  */
#ifndef _GNU_SOURCE
# define _GNU_SOURCE 1
#endif
/* Enable threading extensions on Solaris.  */
#ifndef _POSIX_PTHREAD_SEMANTICS
# define _POSIX_PTHREAD_SEMANTICS 1
#endif
/* Enable extensions on HP NonStop.  */
#ifndef _TANDEM_SOURCE
# define _TANDEM_SOURCE 1
#endif
/* Enable general extensions on Solaris.  */
#ifndef __EXTENSIONS__
# define __EXTENSIONS__ 1
#endif


/* Version number of package */
#define VERSION "0.49"

/* Version of Windows */
/* #undef WINVER */

/* Define WORDS_BIGENDIAN to 1 if your processor stores words with the most
   significant byte first (like Motorola and SPARC, unlike Intel). */
#if defined AC_APPLE_UNIVERSAL_BUILD
# if defined __BIG_ENDIAN__
#  define WORDS_BIGENDIAN 1
# endif
#else
# ifndef WORDS_BIGENDIAN
/* #  undef WORDS_BIGENDIAN */
# endif
#endif

/* Number of bits in a file offset, on hosts where this is settable. */
/* #undef _FILE_OFFSET_BITS */

/* Define for large files, on AIX-style hosts. */
/* #undef _LARGE_FILES */

/* Define to 1 if on MINIX. */
/* #undef _MINIX */

/* Define to 2 if the system does not provide POSIX.1 features except with
   this defined. */
/* #undef _POSIX_1_SOURCE */

/* Define to 1 if you need to in order for `stat' and other things to work. */
/* #undef _POSIX_SOURCE */

/* Cause Sun Studio to not be quite so strict with standards conflicts */
/* #undef _STLP_NO_NEW_C_HEADERS */

/* Magical number to make things work */
/* #undef _WIN32_WINNT */

/* Workaround for bug in FreeBSD headers */
/* #undef __APPLE_CC__ */

/* Use STDC Constant Macros in C++ */
/* #undef __STDC_CONSTANT_MACROS */

/* Use STDC Format Macros in C++ */
/* #undef __STDC_FORMAT_MACROS */

/* Use STDC Limit Macros in C++ */
#define __STDC_LIMIT_MACROS 1

/* Define to empty if `const' does not conform to ANSI C. */
/* #undef const */

/* Define to `__inline__' or `__inline' if that's what the C compiler
   calls it, or to nothing if 'inline' is not supported under any name.  */
#ifndef __cplusplus
/* #undef inline */
#endif

/* Define to the equivalent of the C99 'restrict' keyword, or to
   nothing if this is not supported.  Do not define if restrict is
   supported directly.  */
#define restrict __restrict
/* Work around a bug in Sun C++: it does not support _Restrict or
   __restrict__, even though the corresponding Sun C compiler ends up with
   "#define restrict _Restrict" or "#define restrict __restrict__" in the
   previous line.  Perhaps some future version of Sun C++ will work with
   restrict; if so, hopefully it defines __RESTRICT like Sun C does.  */
#if defined __SUNPRO_CC && !defined __RESTRICT
# define _Restrict
# define __restrict__
#endif

/* Define to `unsigned int' if <sys/types.h> does not define. */
/* #undef size_t */

/* Define to empty if the keyword `volatile' does not work. Warning: valid
   code using `volatile' can become incorrect without. Disable with care. */
/* #undef volatile */


#ifndef HAVE_SYS_SOCKET_H
# define SHUT_RD SD_RECEIVE
# define SHUT_WR SD_SEND
# define SHUT_RDWR SD_BOTH
#endif
      


#if defined(__cplusplus)
# include CSTDINT_H
# include CINTTYPES_H
#else
# include <stdint.h>
# include <inttypes.h>
#endif

#if !defined(HAVE_ULONG) && !defined(__USE_MISC)
# define HAVE_ULONG 1
typedef unsigned long int ulong;
#endif

/* To hide the platform differences between MS Windows and Unix, I am
 * going to use the Microsoft way and #define the Microsoft-specific
 * functions to the unix way. Microsoft use a separate subsystem for sockets,
 * but Unix normally just use a filedescriptor on the same functions. It is
 * a lot easier to map back to the unix way with macros than going the other
 * way without side effect ;-)
 */
#ifdef TARGET_OS_WINDOWS
#define random() rand()
#define srandom(a) srand(a)
#define get_socket_errno() WSAGetLastError()
#else
#define INVALID_SOCKET -1
#define SOCKET_ERROR -1
#define closesocket(a) close(a)
#define get_socket_errno() errno
#endif

#if defined(__cplusplus)
# if defined(DEBUG)
#  include <cassert>
#  include <cstddef>
# endif
template<typename To, typename From>
inline To implicit_cast(From const &f) {
  return f;
}
template<typename To, typename From>     // use like this: down_cast<T*>(foo);
inline To down_cast(From* f) {                   // so we only accept pointers
  // Ensures that To is a sub-type of From *.  This test is here only
  // for compile-time type checking, and has no overhead in an
  // optimized build at run-time, as it will be optimized away
  // completely.
  if (false) {
    implicit_cast<From*, To>(0);
  }

#if defined(DEBUG)
  assert(f == NULL || dynamic_cast<To>(f) != NULL);  // RTTI: debug mode only!
#endif
  return static_cast<To>(f);
}
#endif /* defined(__cplusplus) */

#endif /* __CONFIG_H__ */
  


#ifdef HAVE_SYS_WAIT_H
#include <sys/wait.h>
#endif

#ifdef HAVE_FNMATCH_H
#include <fnmatch.h>
#endif

#ifdef HAVE_POLL_H
#include <poll.h>
#else
#include "poll/poll.h"
#endif

/* To hide the platform differences between MS Windows and Unix, I am
 * going to use the Microsoft way and #define the Microsoft-specific
 * functions to the unix way. Microsoft use a separate subsystem for sockets,
 * but Unix normally just use a filedescriptor on the same functions. It is
 * a lot easier to map back to the unix way with macros than going the other
 * way without side effect ;-)
 */
#ifdef WIN32
#include "win32/wrappers.h"
#define get_socket_errno() WSAGetLastError()
#else
#define INVALID_SOCKET -1
#define SOCKET_ERROR -1
#define closesocket(a) close(a)
#define get_socket_errno() errno
#endif

#ifndef HAVE_MSG_NOSIGNAL
#define MSG_NOSIGNAL 0
#endif

#ifndef HAVE_MSG_DONTWAIT
#define MSG_DONTWAIT 0
#endif

#ifndef HAVE_MSG_MORE
#define MSG_MORE 0
#endif

#endif



#ifdef __cplusplus
#include <cstdio>
#define PANDORA_PRINTSTACK_STD_PREFIX std::
#else
#include <stdio.h>
#define PANDORA_PRINTSTACK_STD_PREFIX
#endif

#if defined(HAVE_UCONTEXT_H) && defined(HAVE_PRINTSTACK)
#include <ucontext.h>
#define pandora_print_callstack(a) \
printstack(PANDORA_PRINTSTACK_STD_PREFIX fileno(a))
#elif defined(HAVE_EXECINFO_H) && defined(HAVE_BACKTRACE) && defined(HAVE_BACKTRACE_SYMBOLS_FD)

#include <execinfo.h>

#define pandora_print_callstack(a) \
{ \
  void *stack[100];  \
  int depth = backtrace(stack, 100); \
  backtrace_symbols_fd(stack, depth, PANDORA_PRINTSTACK_STD_PREFIX fileno(a)); \
}
#elif defined(HAVE_EXECINFO_H) && defined(HAVE_BACKTRACE) && defined(HAVE_BACKTRACE_SYMBOLS) && !defined(HAVE_BACKTRACE_SYMBOLS_FD)

#include <execinfo.h>

#define pandora_print_callstack(a) \
{ \
  void *stack[100];  \
  int depth= backtrace(stack, 100); \
  char **symbol= backtrace_symbols(stack, depth); \
  for (int x= 0; x < size; ++x) \
    PANDORA_PRINTSTACK_STD_PREFIX fprintf(a, "%s\n", symbol[x]); \
}
#else
#define pandora_print_callstack(a) \
    PANDORA_PRINTSTACK_STD_PREFIX fprintf(a, \
      "Stackdump not supported for this platform\n");
#endif
  
