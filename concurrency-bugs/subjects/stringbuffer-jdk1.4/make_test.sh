clang="/home/tyu/Documents/llvm/build/bin/clang++"
link="/home/tyu/Documents/llvm/build/bin/llvm-link"

$clang -g -O3 -emit-llvm stringbuffer.cpp -c -o stringbuffer.bc 
$clang -g -O3 -emit-llvm main.cpp -c -o main.bc
$link *.bc -o buffer.bc 
/home/tyu/Documents/llvm/build/bin/llc -march=x86-64 buffer.bc -o buffer.s
g++ buffer.s -lpthread -o main
