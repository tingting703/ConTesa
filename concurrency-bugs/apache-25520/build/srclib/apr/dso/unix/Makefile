srcdir = /home/tyu/Documents/concurrency-bugs/apache-25520/httpd-2.0.48/srclib/apr/dso/unix
VPATH = /home/tyu/Documents/concurrency-bugs/apache-25520/httpd-2.0.48/srclib/apr/dso/unix

TARGETS = dso.lo

# bring in rules.mk for standard functionality
include /home/tyu/Documents/concurrency-bugs/apache-25520/build/srclib/apr/build/apr_rules.mk

INCDIR=../../include
INCDIR2=$(INCDIR)/arch
INCDIR3=$(INCDIR)/arch/unix
INCLUDES=-I$(INCDIR) -I$(srcdir)/$(INCDIR) -I$(INCDIR2) -I$(srcdir)/$(INCDIR2) -I$(INCDIR3) -I$(srcdir)/$(INCDIR3)

# DO NOT REMOVE
