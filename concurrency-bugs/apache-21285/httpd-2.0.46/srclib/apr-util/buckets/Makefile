VPATH = /home/tyu/Documents/concurrency-bugs/apache-21285/httpd-2.0.46/srclib/apr-util/buckets

INCLUDES = -I/home/tyu/Documents/concurrency-bugs/apache-21285/httpd-2.0.46/srclib/apr-util/include -I/home/tyu/Documents/concurrency-bugs/apache-21285/httpd-2.0.46/srclib/apr-util/include/private  -I/home/tyu/Documents/concurrency-bugs/apache-21285/httpd-2.0.46/srclib/apr/include  -I/home/tyu/Documents/concurrency-bugs/apache-21285/httpd-2.0.46/srclib/apr-util/xml/expat/lib 

TARGETS = apr_buckets_file.lo apr_buckets_pool.lo apr_buckets_flush.lo \
          apr_buckets_refcount.lo apr_buckets_heap.lo apr_buckets_simple.lo \
          apr_buckets.lo apr_buckets_mmap.lo apr_buckets_socket.lo \
          apr_buckets_eos.lo apr_buckets_pipe.lo apr_brigade.lo \
          apr_buckets_alloc.lo

# bring in rules.mk for standard functionality
include /home/tyu/Documents/concurrency-bugs/apache-21285/httpd-2.0.46/srclib/apr-util/build/rules.mk
