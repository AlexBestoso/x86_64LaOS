cd ./_install
find . -print0 | cpio --null -ov --format=newc | gzip -9 > ../initramfs.cpio.gz
cd ..
mv initramfs.cpio.gz iso/boot/initramfs.cpio.gz
