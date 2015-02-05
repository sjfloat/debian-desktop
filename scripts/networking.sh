#!/bin/sh

cat <<EOF >> /etc/network/interfaces

# Added by packer - `date`
auto eth1
iface eth1 inet dhcp
EOF
