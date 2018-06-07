srcdir = /home/tyu/Documents/concurrency-bugs/apache-25520/httpd-2.0.48/srclib/apr/misc/unix
VPATH = /home/tyu/Documents/concurrency-bugs/apache-25520/httpd-2.0.48/srclib/apr/misc/unix

TARGETS = \
	start.lo getopt.lo otherchild.lo errorcodes.lo rand.lo version.lo \
	charset.lo env.lo

# bring in rules.mk for standard functionality
include /home/tyu/Documents/concurrency-bugs/apache-25520/httpd-2.0.48/srclib/apr/build/apr_rules.mk

INCDIR=../../include
OSDIR=$(INCDIR)/arch/unix
DEFOSDIR=$(INCDIR)/arch/unix
INCLUDES=-I$(INCDIR) -I$(OSDIR) -I$(DEFOSDIR)

# DO NOT REMOVE
