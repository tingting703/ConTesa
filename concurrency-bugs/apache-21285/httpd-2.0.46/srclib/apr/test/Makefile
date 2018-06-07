srcdir = /home/tyu/Documents/concurrency-bugs/apache-21285/httpd-2.0.46/srclib/apr/test
VPATH = /home/tyu/Documents/concurrency-bugs/apache-21285/httpd-2.0.46/srclib/apr/test

# PROGRAMS includes all test programs built on this platform.
# STDTEST_PORTABLE
#   test programs invoked via standard user interface, run on all platforms
# STDTEST_NONPORTABLE
#   test programs invoked via standard user interface, not portable
# OTHER_PROGRAMS
#   programs such as sendfile, that have to be invoked in a special sequence
#   or with special parameters

STDTEST_PORTABLE = \
	testflock \
	testsock \
	testlockperf \
	testshmproducer \
	testshmconsumer \
	testatomic \
	testmutexscope \
	testall

STDTEST_NONPORTABLE = \
	testshm \
	testprocmutex \
	testglobalmutex

OTHER_PROGRAMS = client sendfile \
	server

PROGRAMS = $(STDTEST_PORTABLE) $(STDTEST_NONPORTABLE) $(OTHER_PROGRAMS)

TARGETS = $(PROGRAMS)

# bring in rules.mk for standard functionality
include /home/tyu/Documents/concurrency-bugs/apache-21285/httpd-2.0.46/srclib/apr/build/apr_rules.mk

LOCAL_LIBS=../libapr-${APR_MAJOR_VERSION}.la

CLEAN_TARGETS = testfile.tmp mod_test.slo proc_child occhild

INCDIR=../include
INCLUDES=-I$(INCDIR)

CFLAGS=$(MY_CFLAGS)

check: $(STDTEST_PORTABLE) $(STDTEST_NONPORTABLE)
	for prog in $(STDTEST_PORTABLE) $(STDTEST_NONPORTABLE); do \
		./$$prog; \
		if test $$? = 255; then \
			echo "$$prog failed"; \
			break; \
		fi; \
	done

testflock: testflock.lo $(LOCAL_LIBS)
	$(LINK) testflock.lo $(LOCAL_LIBS) $(ALL_LIBS)

occhild: occhild.lo $(LOCAL_LIBS)
	$(LINK) occhild.lo $(LOCAL_LIBS) $(ALL_LIBS)

proc_child: proc_child.lo $(LOCAL_LIBS)
	$(LINK) proc_child.lo $(LOCAL_LIBS) $(ALL_LIBS)

# FIXME: -prefer-pic is only supported with libtool-1.4+
mod_test.slo: $(srcdir)/mod_test.c
	$(LIBTOOL) --mode=compile $(COMPILE) -prefer-pic -c $(srcdir)/mod_test.c && touch $@

mod_test.la: mod_test.slo $(LOCAL_LIBS)
	$(LIBTOOL) --mode=link $(COMPILE) -rpath `pwd` -avoid-version -module mod_test.lo $(LT_LDFLAGS) $(ALL_LDFLAGS) -o $@

libmod_test.la: mod_test.slo $(LOCAL_LIBS)
	$(LIBTOOL) --mode=link $(COMPILE) -rpath `pwd` -avoid-version mod_test.lo $(LT_LDFLAGS) $(ALL_LDFLAGS) -o $@

testlockperf: testlockperf.lo $(LOCAL_LIBS)
	$(LINK) testlockperf.lo $(LOCAL_LIBS) $(ALL_LIBS)

testsock: testsock.lo client server sendfile $(LOCAL_LIBS)
	$(LINK) testsock.lo $(LOCAL_LIBS) $(ALL_LIBS)

client: client.lo $(LOCAL_LIBS)
	$(LINK) client.lo $(LOCAL_LIBS) $(ALL_LIBS)

server: server.lo $(LOCAL_LIBS)
	$(LINK) server.lo $(LOCAL_LIBS) $(ALL_LIBS)

sendfile: sendfile.lo $(LOCAL_LIBS)
	$(LINK) sendfile.lo $(LOCAL_LIBS) $(ALL_LIBS)

testshm: testshm.lo $(LOCAL_LIBS) testshmproducer testshmconsumer
	$(LINK) testshm.lo $(LOCAL_LIBS) $(ALL_LIBS)

testshmproducer: testshmproducer.lo $(LOCAL_LIBS)
	$(LINK) testshmproducer.lo $(LOCAL_LIBS) $(ALL_LIBS)

testshmconsumer: testshmconsumer.lo $(LOCAL_LIBS)
	$(LINK) testshmconsumer.lo $(LOCAL_LIBS) $(ALL_LIBS)

testprocmutex: testprocmutex.lo $(LOCAL_LIBS)
	$(LINK) testprocmutex.lo $(LOCAL_LIBS) $(ALL_LIBS)

testglobalmutex: testglobalmutex.lo $(LOCAL_LIBS)
	$(LINK) testglobalmutex.lo $(LOCAL_LIBS) $(ALL_LIBS)

testatomic: testatomic.lo $(LOCAL_LIBS)
	$(LINK) testatomic.lo $(LOCAL_LIBS) $(ALL_LIBS)

testmutexscope: testmutexscope.lo $(LOCAL_LIBS)
	$(LINK) testmutexscope.lo $(LOCAL_LIBS) $(ALL_LIBS)

TESTS = testall.lo testtime.lo teststr.lo testvsn.lo testipsub.lo \
	testmmap.lo testud.lo testtable.lo testsleep.lo testpools.lo \
	testfmt.lo testfile.lo testdir.lo testfileinfo.lo testrand.lo \
	testdso.lo testoc.lo testdup.lo testsockets.lo testproc.lo \
	testpoll.lo testlock.lo testsockopt.lo testpipe.lo testthread.lo \
	testhash.lo testargs.lo testnames.lo testuser.lo testpath.lo \
	testenv.lo

testall: $(TESTS) mod_test.la libmod_test.la occhild \
	 CuTest.lo proc_child $(LOCAL_LIBS)
	$(LINK) $(TESTS) CuTest.lo $(LOCAL_LIBS) $(ALL_LIBS)


# DO NOT REMOVE
