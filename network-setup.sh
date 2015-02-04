#!/bin/sh -xe

vmname="wheezy-import-test"
#subnet=192.168.56
#gateway=${subnet}.2
#lowerip=${subnet}.100
#upperip=${subnet}.200

#VBoxManage controlvm $vmname acpipowerbutton

#ifname=`VBoxManage hostonlyif create | cut -f2 -d" " | tr -d \' `
ifname=vboxnet0

#VBoxManage hostonlyif ipconfig $ifname --ip $gateway
#VBoxManage dhcpserver add --ifname $ifname --ip $gateway --netmask 255.255.255.0 --lowerip $lowerip --upperip $upperip --enable
#VBoxManage dhcpserver modify --ifname $ifname --enable
VBoxManage showvminfo $vmname > /tmp/a
VBoxManage modifyvm $vmname --nic2 hostonly --hostonlyadapter2 $ifname
VBoxManage showvminfo $vmname > /tmp/b
diff /tmp/a /tmp/b

#VBoxManage startvm $vmname
