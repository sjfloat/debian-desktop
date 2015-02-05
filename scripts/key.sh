#!/bin/sh

mkdir .ssh
chmod 700 .ssh
mv /tmp/id_rsa.pub .ssh/authorized_keys
chmod 700 .ssh/authorized_keys
