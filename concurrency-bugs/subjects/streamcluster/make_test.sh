CLANGP="/home/tyu/Documents/llvm/build/bin/clang++"

OPT="/home/tyu/Documents/llvm/build/bin/opt"

LLC="/home/tyu/Documents/llvm/build/bin/llc"


$CLANGP -march=core2 -mtune=core2 -emit-llvm -DENABLE_THREADS -O0 -g -c streamcluster.cpp -c -o streamcluster.bc
$LLC -march=x86-64 streamcluster.bc -o streamcluster.s
g++ streamcluster.s -lpthread -o streamcluster
