#!/bin/sh

cat <<EOF >> /etc/network/interfaces

# Added by packer - `date`
auto eth1
#iface eth1 inet dhcp
iface eth1 inet static
address 192.168.59.200
netmask 255.255.255.0
network 192.168.59.0
broadcast 192.168.59.255
EOF
