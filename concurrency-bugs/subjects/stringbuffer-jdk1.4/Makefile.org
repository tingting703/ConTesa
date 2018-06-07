# Makefile for the StringBuffer bug

clang="/home/tyu/Documents/s2e/build/llvm-native/Release/bin/clang"

CXX=g++
CXXFLAGS=-g
LDFLAGS=-lpthread

all: main

main: stringbuffer.o main.cpp
	$(CXX) $(CXXFLAGS) -o main main.cpp stringbuffer.o $(LDFLAGS)

stringbuffer.o: stringbuffer.cpp stringbuffer.hpp
	$(CXX) $(CXXFLAGS) -c -o stringbuffer.o stringbuffer.cpp

stringbuffer-bitcode: main.cpp stringbuffer.cpp
	$(clang) -g -emit-llvm pbzip2.cpp -c -o pbzip2.bc

clean:
	rm -f stringbuffer.o main
