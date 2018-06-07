srcdir = /home/tyu/Documents/concurrency-bugs/apache-25520/httpd-2.0.48/srclib/apr/network_io/unix
VPATH = /home/tyu/Documents/concurrency-bugs/apache-25520/httpd-2.0.48/srclib/apr/network_io/unix

TARGETS = \
	sendrecv.lo \
	sockets.lo \
	sockopt.lo \
	sockaddr.lo \
	inet_ntop.lo \
	inet_pton.lo

# bring in rules.mk for standard functionality
include /home/tyu/Documents/concurrency-bugs/apache-25520/build/srclib/apr/build/apr_rules.mk

INCDIR=../../include
OSDIR=$(INCDIR)/arch/unix
DEFOSDIR=$(INCDIR)/arch/unix
INCLUDES=-I$(INCDIR) -I$(srcdir)/$(INCDIR) -I$(OSDIR) -I$(srcdir)/$(OSDIR) -I$(DEFOSDIR) -I$(srcdir)/$(DEFOSDIR)

# DO NOT REMOVE
