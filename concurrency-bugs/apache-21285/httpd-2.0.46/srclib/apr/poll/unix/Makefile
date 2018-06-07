srcdir = /home/tyu/Documents/concurrency-bugs/apache-21285/httpd-2.0.46/srclib/apr/poll/unix
VPATH = /home/tyu/Documents/concurrency-bugs/apache-21285/httpd-2.0.46/srclib/apr/poll/unix

TARGETS = \
	poll.lo \
	pollacc.lo 


# bring in rules.mk for standard functionality
include /home/tyu/Documents/concurrency-bugs/apache-21285/httpd-2.0.46/srclib/apr/build/apr_rules.mk

INCDIR=../../include
OSDIR=$(INCDIR)/arch/unix
DEFOSDIR=$(INCDIR)/arch/unix
INCLUDES=-I$(INCDIR) -I$(OSDIR) -I$(DEFOSDIR)

# DO NOT REMOVE
