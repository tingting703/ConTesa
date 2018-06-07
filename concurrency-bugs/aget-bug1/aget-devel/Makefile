# EnderUNIX Aget Makefile
# http://www.enderunix.org/aget/

OBJS = main.o Aget.o Misc.o Head.o Signal.o Download.o Ftp.o Resume.o loadrc.o
CFLAGS = -g -Wall -D_GNU_SOURCE 
LDFLAGS = -pthread
CC=/home/tyu/Documents/llvm/build/bin/clang
#STRIP = strip




all: aget

aget: $(OBJS)
	$(CC) -c -o aget.bc -g -emit-llvm $(OBJS) $(LDFLAGS)

install: aget
	cp -f aget /usr/local/bin/aget

clean:
	rm -f *.o aget
