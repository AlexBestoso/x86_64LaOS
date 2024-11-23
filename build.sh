gcc -static init.c -o _install/init
cd ./_install
find . -print0 | cpio --null -ov --format=newc | gzip -9 > ../initramfs.cpio.gz
cd ..
mv initramfs.cpio.gz iso/boot/initramfs.cpio.gz
grub-mkrescue -o myos.iso iso/
