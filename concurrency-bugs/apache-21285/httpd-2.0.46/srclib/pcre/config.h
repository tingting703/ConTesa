/* config.h.  Generated by configure.  */

/* On Unix systems config.in is converted by configure into config.h. PCRE is
written in Standard C, but there are a few non-standard things it can cope
with, allowing it to run on SunOS4 and other "close to standard" systems.

On a non-Unix system you should just copy this file into config.h, and set up
the macros the way you need them. You should normally change the definitions of
HAVE_STRERROR and HAVE_MEMMOVE to 1. Unfortunately, because of the way autoconf
works, these cannot be made the defaults. If your system has bcopy() and not
memmove(), change the definition of HAVE_BCOPY instead of HAVE_MEMMOVE. If your
system has neither bcopy() nor memmove(), leave them both as 0; an emulation
function will be used. */

/* Define to empty if the keyword does not work. */

/* #undef const */

/* Define to `unsigned' if <stddef.h> doesn't define size_t. */

/* #undef size_t */

/* The following two definitions are mainly for the benefit of SunOS4, which
doesn't have the strerror() or memmove() functions that should be present in
all Standard C libraries. The macros HAVE_STRERROR and HAVE_MEMMOVE should
normally be defined with the value 1 for other systems, but unfortunately we
can't make this the default because "configure" files generated by autoconf
will only change 0 to 1; they won't change 1 to 0 if the functions are not
found. */

#define HAVE_STRERROR 1
#define HAVE_MEMMOVE 1

/* There are some non-Unix systems that don't even have bcopy(). If this macro
is false, an emulation is used. If HAVE_MEMMOVE is set to 1, the value of
HAVE_BCOPY is not relevant. */

#define HAVE_BCOPY 1

/* The value of NEWLINE determines the newline character. The default is to
leave it up to the compiler, but some sites want to force a particular value.
On Unix systems, "configure" can be used to override this default. */

#ifndef NEWLINE
#define NEWLINE '\n'
#endif

/* End */
