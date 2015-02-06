OVF:= debian-7.8.0-amd64-ovf

vm2: output-virtualbox-ovf/$(OVF).ovf
	VBoxManage import $<

output-virtualbox-ovf/$(OVF).ovf: wheezy-ovf.json output-virtualbox-iso/debian-7.8.0-amd64.ovf
	packer build $<

vm: output-virtualbox-iso/debian-7.8.0-amd64.ovf
	VBoxManage import $<

#output-virtualbox-iso/debian-7.8.0-amd64.ovf output-virtualbox-iso/debian-7.8.0-amd64-disk1.vmdk: wheezy.json http/preseed.cfg
#	packer build $<


NOTES.html: NOTES.adoc
	asciidoctor $<


clean:
	rm -rf output-virtualbox-ovf
#	rm -rf output-virtualbox-iso

realclean: clean
	-VBoxManage controlvm $(OVF) poweroff
	VBoxManage unregistervm $(OVF) --delete
