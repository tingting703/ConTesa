srcdir = /home/tyu/Documents/concurrency-bugs/apache-25520/httpd-2.0.48/srclib/apr/test/internal
VPATH = /home/tyu/Documents/concurrency-bugs/apache-25520/httpd-2.0.48/srclib/apr/test/internal

NONPORTABLE = \
	testregex

PROGRAMS = \

TARGETS = $(PROGRAMS) $(NONPORTABLE)

# bring in rules.mk for standard functionality
include /home/tyu/Documents/concurrency-bugs/apache-25520/build/srclib/apr/build/apr_rules.mk

LOCAL_LIBS=../../libapr-${APR_MAJOR_VERSION}.la

CLEAN_TARGETS = testregex

INCDIR=../../include
INCLUDES=-I$(INCDIR) -I$(srcdir)/$(INCDIR)

CFLAGS=$(MY_CFLAGS)

all: $(PROGRAMS) $(NONPORTABLE)

check: $(PROGRAMS) $(NONPORTABLE)
	for prog in $(PROGRAMS) $(NONPORTABLE); do \
		./$$prog; \
		if test $$i = 255; then \
			echo "$$prog failed"; \
			break; \
		fi \
	done

testregex: testregex.lo $(LOCAL_LIBS)
	$(LINK) testregex.lo $(LOCAL_LIBS) $(ALL_LIBS)

# DO NOT REMOVE
