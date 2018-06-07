top_srcdir   = /home/tyu/Documents/concurrency-bugs/apache-21285/httpd-2.0.46
top_builddir = /home/tyu/Documents/concurrency-bugs/apache-21285/httpd-2.0.46
srcdir       = /home/tyu/Documents/concurrency-bugs/apache-21285/httpd-2.0.46/srclib/pcre
builddir     = /home/tyu/Documents/concurrency-bugs/apache-21285/httpd-2.0.46/srclib/pcre
VPATH        = /home/tyu/Documents/concurrency-bugs/apache-21285/httpd-2.0.46/srclib/pcre
LTLIBRARY_NAME = libpcre.la
LTLIBRARY_SOURCES = maketables.c get.c study.c pcre.c pcreposix.c

CLEAN_TARGETS = dftables chartables.c
DISTCLEAN_TARGETS = pcre.h pcre-config config.h config.log config.status $(CLEAN_TARGETS)

include $(top_srcdir)/build/ltlib.mk

config.h:
	touch $@

$(LTLIBRARY_OBJECTS) dftables.lo: config.h

dftables: dftables.lo
	$(LINK) $(EXTRA_LDFLAGS) dftables.lo $(EXTRA_LIBS)

$(srcdir)/chartables.c: dftables
	./dftables > $@

pcre.lo: $(srcdir)/chartables.c
