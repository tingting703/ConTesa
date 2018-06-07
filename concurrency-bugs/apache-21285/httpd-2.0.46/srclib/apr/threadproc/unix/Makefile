srcdir = /home/tyu/Documents/concurrency-bugs/apache-21285/httpd-2.0.46/srclib/apr/threadproc/unix
VPATH = /home/tyu/Documents/concurrency-bugs/apache-21285/httpd-2.0.46/srclib/apr/threadproc/unix

TARGETS = \
	proc.lo \
	procsup.lo \
	thread.lo \
	threadpriv.lo \
	signals.lo

# bring in rules.mk for standard functionality
include /home/tyu/Documents/concurrency-bugs/apache-21285/httpd-2.0.46/srclib/apr/build/apr_rules.mk

INCDIR=../../include
DEFOSDIR=$(INCDIR)/arch/unix
INCLUDES=-I$(INCDIR) -I$(DEFOSDIR)

# DO NOT REMOVE
