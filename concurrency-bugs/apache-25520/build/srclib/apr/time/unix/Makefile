srcdir = /home/tyu/Documents/concurrency-bugs/apache-25520/httpd-2.0.48/srclib/apr/time/unix
VPATH = /home/tyu/Documents/concurrency-bugs/apache-25520/httpd-2.0.48/srclib/apr/time/unix

TARGETS = time.lo timestr.lo

# bring in rules.mk for standard functionality
include /home/tyu/Documents/concurrency-bugs/apache-25520/build/srclib/apr/build/apr_rules.mk

DEFOSDIR=$(INCDIR)/arch/unix
INCDIR=../../include
INCLUDES=-I$(INCDIR) -I$(srcdir)/$(INCDIR) -I$(DEFOSDIR) -I$(srcdir)/$(DEFOSDIR)

# DO NOT REMOVE
