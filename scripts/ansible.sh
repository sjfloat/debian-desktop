#!/bin/sh

apt-get -y install python ruby ruby-json facter ohai

echo "deb http://http.debian.net/debian wheezy-backports main" > /etc/apt/sources.list.d/backports.list
apt-get update
apt-get -y install ansible
