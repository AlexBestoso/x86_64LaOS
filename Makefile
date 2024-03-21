all:
	nasm -f bin boot.asm -o ./bin/boot.bin
clean:
	rm ./bin/*
	rm -rf ./*.iso
gen:
	./make.sh
