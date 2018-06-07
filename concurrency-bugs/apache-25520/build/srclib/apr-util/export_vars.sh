#
# export_vars.sh
#
# This shell script is used to export vars to the application using the
# APRUTIL library. This script should be "sourced" to ensure the variable
# values are set within the calling script's context. For example:
#
#   $ . path/to/apr-util/export_vars.sh
#

APRUTIL_EXPORT_INCLUDES="-I/home/tyu/Documents/concurrency-bugs/apache-25520/build/srclib/apr-util/xml/expat/lib"
APRUTIL_EXPORT_LIBS="/home/tyu/Documents/concurrency-bugs/apache-25520/build/srclib/apr-util/xml/expat/lib/libexpat.la"
APRUTIL_LDFLAGS="-L/home/tyu/Documents/concurrency-bugs/apache-25520/build/srclib/apr-util/xml/expat/lib"
