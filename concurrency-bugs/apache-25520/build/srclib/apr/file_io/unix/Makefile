srcdir = /home/tyu/Documents/concurrency-bugs/apache-25520/httpd-2.0.48/srclib/apr/file_io/unix
VPATH = /home/tyu/Documents/concurrency-bugs/apache-25520/httpd-2.0.48/srclib/apr/file_io/unix

TARGETS = \
	copy.lo \
	dir.lo \
	fileacc.lo \
	filedup.lo \
	filepath.lo \
	filepath_util.lo \
	filestat.lo \
	flock.lo \
	fullrw.lo \
	open.lo \
	pipe.lo \
	readwrite.lo \
	seek.lo \
	mktemp.lo \
	tempdir.lo

# bring in rules.mk for standard functionality
include /home/tyu/Documents/concurrency-bugs/apache-25520/build/srclib/apr/build/apr_rules.mk

INCDIR=../../include
OSDIR=$(INCDIR)/arch/unix
DEFOSDIR=$(INCDIR)/arch/unix
INCLUDES=-I$(INCDIR) -I$(srcdir)/$(INCDIR) -I$(OSDIR) -I$(srcdir)/$(OSDIR) -I$(DEFOSDIR) -I$(srcdir)/$(DEFOSDIR)

# DO NOT REMOVE
