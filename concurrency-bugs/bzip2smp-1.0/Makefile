CC = /home/tyu/Documents/llvm/Release+Asserts/bin/clang

objects := bzip2smp.bc note.bc detectht.bc bzlib.bc compress.bc decompress.bc \
crctable.bc blocksort.bc huffman.bc randtable.bc

CFLAGS = -emit-llvm -flto -g
#-U__linux__

%.o: %.c
	$(CC) $(CFLAGS) -o $@ -c $<

bzip2smp: $(objects)
	$(CC) -o $@ $^ -lpthread

.PHONY: clean

clean:
	rm -f $(objects) bzip2smp
