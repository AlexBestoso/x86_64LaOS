nasm -f bin boot.asm -o ./bin/boot.bin
dd if=/dev/zero of=floppy.img bs=1024 count=1440
dd if=./bin/boot.bin of=floppy.img seek=0 count=1 conv=notrunc
mkdir ./iso
cp floppy.img iso/
mkisofs -o myos.iso -b floppy.img iso/
rm -rf ./iso
rm floppy.img
