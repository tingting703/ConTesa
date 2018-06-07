clang="/home/tyu/Documents/llvm/build/bin/clang"
link="/home/tyu/Documents/llvm/build/bin/llvm-link"

$clang -g -emit-llvm -D_GNU_SOURCE Aget.c -c -o Aget.bc 
$clang -g -emit-llvm -D_GNU_SOURCE Download.c -c -o Download.bc
$clang -g -emit-llvm -D_GNU_SOURCE Ftp.c -c -o Ftp.bc
$clang -g -emit-llvm -D_GNU_SOURCE Head.c -c -o Head.bc
$clang -g -emit-llvm -D_GNU_SOURCE loadrc.c -c -o loadrc.bc
$clang -g -emit-llvm -D_GNU_SOURCE main.c -c -o main.bc
$clang -g -emit-llvm -D_GNU_SOURCE Misc.c -c -o Misc.bc
$clang -g -emit-llvm -D_GNU_SOURCE Resume.c -c -o Resume.bc
$clang -g -emit-llvm -D_GNU_SOURCE Signal.c -c -o Signal.bc
$link *.bc -o aget.bc 
/home/tyu/Documents/llvm/build/bin/llc -march=x86-64 aget.bc -o aget.s
g++ aget.s -lpthread -o aget
