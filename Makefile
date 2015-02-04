
vm: output-virtualbox-iso/debian-7.8.0-amd64.ovf
	VBoxManage import $<

output-virtualbox-iso/debian-7.8.0-amd64-disk1.vmdk: wheezy.json http/preseed.cfg
	packer build $<


NOTES.html: NOTES.adoc
	asciidoctor $<

