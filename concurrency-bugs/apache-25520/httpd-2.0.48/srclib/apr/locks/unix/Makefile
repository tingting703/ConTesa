srcdir = /home/tyu/Documents/concurrency-bugs/apache-25520/httpd-2.0.48/srclib/apr/locks/unix
VPATH = /home/tyu/Documents/concurrency-bugs/apache-25520/httpd-2.0.48/srclib/apr/locks/unix

TARGETS = \
	thread_mutex.lo \
	thread_rwlock.lo \
	thread_cond.lo \
	proc_mutex.lo \
	global_mutex.lo

# bring in rules.mk for standard functionality
include /home/tyu/Documents/concurrency-bugs/apache-25520/httpd-2.0.48/srclib/apr/build/apr_rules.mk

INCDIR=../../include
INCDIR2=$(INCDIR)/arch
INCDIR3=$(INCDIR)/arch/unix
INCLUDES=-I$(INCDIR) -I$(INCDIR2) -I$(INCDIR3)

# DO NOT REMOVE
