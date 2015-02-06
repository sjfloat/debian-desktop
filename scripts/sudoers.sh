#!/bin/sh

apt-get -y install sudo

echo 'stevej ALL=(ALL) NOPASSWD:ALL' > /etc/sudoers.d/stevej
chmod 440 /etc/sudoers.d/stevej

echo "Defaults !requiretty" >> /etc/sudoers
