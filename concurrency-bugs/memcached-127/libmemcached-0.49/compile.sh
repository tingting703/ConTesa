PREFIX=$(readlink -m /home/tyu/Documents/llvm/Release+Asserts/bin)
GOLD=$(readlink -m /home/tyu/Documents/llvm/Release+Asserts/lib/LLVMgold.so)
export CC=$PREFIX/clang
export CXX=$PREFIX/clang++
export CPP="$PREFIX/clang -E"
export CFLAGS="-emit-llvm -flto -g -O0" # Replace -g with -O4 for release build
export CXXFLAGS="$CFLAGS"
export RANLIB="ar --plugin=$GOLD -s"

#mkdir -p /home/tyu/Documents/concurrency-bugs/mysql-12228//build
#cd /home/tyu/Documents/concurrency-bugs/mysql-12228/build
./configure --prefix=/home/tyu/Documents/concurrency-bugs/memcached-127/libmemcached-0.49/installed --with-memcached=/home/tyu/Documents/concurrency-bugs/memcached-127/memcached-1.4.4/installed/bin/memcached
