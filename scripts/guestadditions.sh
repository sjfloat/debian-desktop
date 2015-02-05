#!/bin/sh -xe

iso=/root/VBoxGuestAdditions_*.iso

if [ ! -d /mnt/tmp ]; then
	mkdir /mnt/tmp
fi

mount -o loop $iso /mnt/tmp
yes | sh /mnt/tmp/VBoxLinuxAdditions.run
umount /mnt/tmp
rm $iso
