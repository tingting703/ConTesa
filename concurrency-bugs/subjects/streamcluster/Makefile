#include ../defines.mk

TEST_NAME = streamcluster
TEST_FILES = streamcluster
TEST_ARGS = 10 20 128 16384 16384 1000 none output.txt $(NCORES)

CFLAGS = -DENABLE_THREADS
LIBS = -lstdc++

DMP_O_GRAN = 6
DMP_O_QUANTUM = 100000

DMP_B_GRAN = 6
DMP_B_QUANTUM = 100000

#include ../Default.mk

NCORES ?= 8

CLANG = /home/tyu/Documents/llvm/build/bin/clang
CLANGP = /home/tyu/Documents/llvm/build/bin/clang++
#CC = gcc -m32 -march=core2 -mtune=core2
#CXX = g++ -m32 -march=core2 -mtune=core2
CC = $(CLANG) -march=core2 -mtune=core2
CXX = $(CLANGP) -march=core2 -mtune=core2
CFLAGS += -O0 -g

CONFIGS = pthread
PROGS = $(addprefix $(TEST_NAME)-, $(CONFIGS))

.PHONY: default all clean

default: all
all: $(PROGS)
clean:
	rm -f $(PROGS) obj/*

eval: $(addprefix eval-, $(CONFIGS))

############ pthread builders ############

PTHREAD_CFLAGS = $(CFLAGS)
PTHREAD_LIBS += $(LIBS) -lpthread -lm

PTHREAD_OBJS = $(addprefix obj/, $(addsuffix -pthread.o, $(TEST_FILES)))

obj/%-pthread.bc: %-pthread.c
	$(CC) -emit-llvm $(PTHREAD_CFLAGS) -c $< -o $@

obj/%-pthread.bc: %.c
	$(CC) -emit-llvm $(PTHREAD_CFLAGS) -c $< -o $@

obj/%-pthread.bc: %-pthread.cpp
	$(CXX) -emit-llvm -emit-llvm $(PTHREAD_CFLAGS) -c $< -o $@

obj/%-pthread.bc: %.cpp
	$(CXX) -emit-llvm $(PTHREAD_CFLAGS) -c $< -o $@

$(TEST_NAME)-pthread: $(PTHREAD_OBJS)
	$(CC) $(PTHREAD_CFLAGS) -o $@ $(PTHREAD_OBJS) $(PTHREAD_LIBS)

#eval-pthread: $(TEST_NAME)-pthread
#	time ./$(TEST_NAME)-pthread $(TEST_ARGS) &> /dev/null




