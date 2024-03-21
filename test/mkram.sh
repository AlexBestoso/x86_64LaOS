cd ./_install
find . -print0 | cpio --null -ov --format=newc | gzip -9 > ../initramfs.cpio.gz
#find ./_install -print0 | cpio --null -ov --format=newc | gzip -9 > ./initramfs.cpio.gz
