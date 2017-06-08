cd livecd/
rm iso/casper/filesystem.squashfs
cd squashfs
mksquashfs . ../iso/casper/filesystem.squashfs -info
cd ../iso/
genisoimage -o new.iso -r -J -no-emul-boot -boot-load-size 4 -boot-info-table -b isolinux/isolinux.bin -c isolinux/boot.cat ./
