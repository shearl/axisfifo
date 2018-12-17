KDIR ?= /lib/modules/`uname -r`/build

obj-m := axis-fifo.o

default:
	make -C $(KDIR) ARCH=arm M=$$PWD modules

clean:
	make -C $(KDIR) ARCH=arm M=$$PWD clean
