#
# Top-level Makefile for APRUTIL
#
CPP = gcc -E

# gets substituted into some targets
APRUTIL_MAJOR_VERSION=0
APRUTIL_DOTTED_VERSION=0.9.5

srcdir = /home/tyu/Documents/concurrency-bugs/apache-25520/httpd-2.0.48/srclib/apr-util
VPATH = /home/tyu/Documents/concurrency-bugs/apache-25520/httpd-2.0.48/srclib/apr-util

INCLUDES = -I/home/tyu/Documents/concurrency-bugs/apache-25520/httpd-2.0.48/srclib/apr-util/include -I/home/tyu/Documents/concurrency-bugs/apache-25520/httpd-2.0.48/srclib/apr-util/include/private  -I/home/tyu/Documents/concurrency-bugs/apache-25520/httpd-2.0.48/srclib/apr/include  -I/home/tyu/Documents/concurrency-bugs/apache-25520/httpd-2.0.48/srclib/apr-util/xml/expat/lib
APRUTIL_LDFLAGS = -L/home/tyu/Documents/concurrency-bugs/apache-25520/httpd-2.0.48/srclib/apr-util/xml/expat/lib
APRUTIL_LIBS = /home/tyu/Documents/concurrency-bugs/apache-25520/httpd-2.0.48/srclib/apr-util/xml/expat/lib/libexpat.la /home/tyu/Documents/concurrency-bugs/apache-25520/httpd-2.0.48/srclib/apr/libapr-0.la -lrt -lm -lcrypt -lnsl -ldl

TARGET_LIB = libaprutil-${APRUTIL_MAJOR_VERSION}.la
INSTALL_SUBDIRS = xml/expat

TARGETS = delete-lib $(TARGET_LIB) delete-exports aprutil.exp export_vars.h

# bring in rules.mk for standard functionality
include /home/tyu/Documents/concurrency-bugs/apache-25520/httpd-2.0.48/srclib/apr-util/build/rules.mk

SUBDIRS = buckets crypto dbm encoding hooks ldap uri xml misc strmatch xlate
CLEAN_SUBDIRS = . test

CLEAN_TARGETS =
DISTCLEAN_TARGETS = config.cache config.log config.status libtool \
	include/private/apu_config.h include/private/apu_private.h \
	include/private/apu_select_dbm.h include/apr_ldap.h include/apu.h \
	export_vars.sh aprutil.exp apu-config
EXTRACLEAN_TARGETS = configure aclocal.m4 include/private/apu_config.h.in \
	exports.c export_vars.h

prefix=/home/tyu/Documents/concurrency-bugs/apache-25520/httpd-2.0.48/installed
exec_prefix=/home/tyu/Documents/concurrency-bugs/apache-25520/httpd-2.0.48/installed
bindir=${prefix}/bin
libdir=${prefix}/lib
includedir=/home/tyu/Documents/concurrency-bugs/apache-25520/httpd-2.0.48/installed/include
top_srcdir=/home/tyu/Documents/concurrency-bugs/apache-25520/httpd-2.0.48/srclib/apr-util
top_blddir=/home/tyu/Documents/concurrency-bugs/apache-25520/httpd-2.0.48/srclib/apr-util

EXPORT_FILES = $(top_srcdir)/include/*.h

delete-lib:
	@if test -f $(TARGET_LIB); then \
	    objects="`find $(SUBDIRS) -name expat -prune -o -name '*.lo' -a -newer $(TARGET_LIB) -print`" ; \
	    if test -n "$$objects"; then \
		echo Found newer objects. Will relink $(TARGET_LIB). ; \
		echo $(RM) -f $(TARGET_LIB) ; \
		$(RM) -f $(TARGET_LIB) ; \
	    fi; \
	fi

install: $(TARGET_LIB)
	if [ ! -d $(DESTDIR)$(includedir) ]; then \
	    /home/tyu/Documents/concurrency-bugs/apache-25520/httpd-2.0.48/srclib/apr/build/mkdir.sh $(DESTDIR)$(includedir); \
	fi;
	cp -p $(top_srcdir)/include/*.h $(DESTDIR)$(includedir)

	if [ -n "$(top_blddir)" ]; then \
		cp -p $(top_blddir)/include/*.h $(DESTDIR)$(includedir); \
	fi;
	
	if [ ! -d $(DESTDIR)$(libdir) ]; then \
	    /home/tyu/Documents/concurrency-bugs/apache-25520/httpd-2.0.48/srclib/apr/build/mkdir.sh $(DESTDIR)$(libdir); \
	fi;
	list='$(INSTALL_SUBDIRS)'; for i in $$list; do \
		( cd $$i ; $(MAKE) DESTDIR=$(DESTDIR) install ); \
	done
	$(LIBTOOL) --mode=install cp $(TARGET_LIB) $(DESTDIR)$(libdir)
	$(LIBTOOL) --mode=install cp aprutil.exp $(DESTDIR)$(libdir)
	if [ ! -d $(DESTDIR)$(bindir) ]; then \
		/home/tyu/Documents/concurrency-bugs/apache-25520/httpd-2.0.48/srclib/apr/build/mkdir.sh $(DESTDIR)$(bindir); \
	fi;
	$(LIBTOOL) --mode=install cp apu-config $(DESTDIR)$(bindir)
	chmod 755 $(DESTDIR)$(bindir)/apu-config

$(TARGET_LIB):
	@objects="`find $(SUBDIRS) -name expat -prune -o -name 'gen_uri_delims.lo' -prune -o -name '*.lo' -print`"; \
	    tmpcmd="$(LINK) -rpath $(libdir) $$objects "; \
	    echo $$tmpcmd; \
	    $$tmpcmd && touch $@

delete-exports:
	@if test -f aprutil.exp; then \
	    headers="`find include/*.h -newer aprutil.exp -print`" ; \
	    if test -n "$$headers"; then \
		echo Found newer headers. Will rebuild aprutil.exp. ; \
		echo $(RM) -f aprutil.exp ; \
		$(RM) -f aprutil.exp ; \
	    fi \
	fi

exports.c:
	$(AWK) -f /home/tyu/Documents/concurrency-bugs/apache-25520/httpd-2.0.48/srclib/apr/build/make_exports.awk $(EXPORT_FILES) > $@

export_vars.h:
	$(AWK) -f /home/tyu/Documents/concurrency-bugs/apache-25520/httpd-2.0.48/srclib/apr/build/make_var_export.awk $(EXPORT_FILES) > $@

aprutil.exp: exports.c export_vars.h
	@echo "#! libaprutil.so" > $@
	@echo "* This file was AUTOGENERATED at build time." >> $@
	@echo "* Please do not edit by hand." >> $@
	$(CPP) $(ALL_CPPFLAGS) $(ALL_INCLUDES) exports.c | grep "ap_hack_" | sed -e 's/^.*[)]\(.*\);$$/\1/' >> $@
	$(CPP) $(ALL_CPPFLAGS) $(ALL_INCLUDES) export_vars.h | sed -e 's/^\#[^!]*//' | sed -e '/^$$/d' >> $@

dox:
	doxygen $(top_srcdir)/docs/doxygen.conf

check: $(TARGET_LIB)
	(cd test && $(MAKE) check)


.PHONY: delete-lib delete-exports
.NOTPARALLEL: delete-lib delete-exports
