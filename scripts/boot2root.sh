mkdir livecd
cd livecd
mkdir iso squashfs
mount -o loop /root/BornToSec.iso /mnt
cp -r /mnt/. iso/
umount /mnt
mount -t squashfs -o loop iso/casper/filesystem.squashfs /mnt
cp -r /mnt/. squashfs/
umount /mnt
vi squashfs/etc/shadow
