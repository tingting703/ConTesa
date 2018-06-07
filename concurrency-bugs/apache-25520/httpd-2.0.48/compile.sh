PREFIX=$(readlink -m /home/tyu/Documents/llvm/Release+Asserts/bin)
GOLD=$(readlink -m /home/tyu/Documents/llvm/Release+Asserts/lib/LLVMgold.so)
export CC=$PREFIX/clang
export CXX=$PREFIX/clang++
export CPP="$PREFIX/clang -E"
export CFLAGS="-emit-llvm -flto -g" # Replace -g with -O4 for release build
export CXXFLAGS="$CFLAGS"
export RANLIB="ar --plugin=$GOLD -s"

mkdir -p /home/tyu/Documents/concurrency-bugs/apache-25520/build
cd /home/tyu/Documents/concurrency-bugs/apache-25520/build
../httpd-2.0.48/configure --prefix=/home/tyu/Documents/concurrency-bugs/apache-25520/build/installed --enable-static-htpasswd --disable-shared && make
