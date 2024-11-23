all:
	./build.sh
code:
	gcc -static init.c -o _install/init
clean:
	rm myos.iso
