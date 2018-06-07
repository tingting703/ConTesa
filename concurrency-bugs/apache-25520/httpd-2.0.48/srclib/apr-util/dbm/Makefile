VPATH = /home/tyu/Documents/concurrency-bugs/apache-25520/httpd-2.0.48/srclib/apr-util/dbm

INCLUDES = -I/home/tyu/Documents/concurrency-bugs/apache-25520/httpd-2.0.48/srclib/apr-util/include -I/home/tyu/Documents/concurrency-bugs/apache-25520/httpd-2.0.48/srclib/apr-util/include/private  -I/home/tyu/Documents/concurrency-bugs/apache-25520/httpd-2.0.48/srclib/apr/include  -I/home/tyu/Documents/concurrency-bugs/apache-25520/httpd-2.0.48/srclib/apr-util/xml/expat/lib

TARGETS = apr_dbm.lo apr_dbm_berkeleydb.lo apr_dbm_gdbm.lo apr_dbm_sdbm.lo apr_dbm_ndbm.lo

# bring in rules.mk for standard functionality
include /home/tyu/Documents/concurrency-bugs/apache-25520/httpd-2.0.48/srclib/apr-util/build/rules.mk

SUBDIRS = sdbm .
