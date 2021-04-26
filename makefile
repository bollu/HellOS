.PHONY: run

run: hellos
	qemu-system-i386 -kernel hellos

hellos: hellos.zig linker.ld
	zig build-exe hellos.zig -target i386-freestanding -T linker.ld

