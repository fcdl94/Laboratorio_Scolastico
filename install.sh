#!/bin/bash

yum install ansible git vim syslinux

ln -s /var/lib/tftpboot /root/tftpboot
ln -s /var/www/html /root/www
mkdir -p /root/www/ks/preseed
cp edubuntu.seed /root/www/ks/preseed
cp postseed.sh /root/www/ks/preseed
cp -r tftpboot/* /root/tftpboot/

/sbin/e-smith/db configuration getprop dnsmasq dhcp-boot
/sbin/e-smith/db configuration setprop dnsmasq tftp-status enabled dhcp-boot pxelinux.0
/sbin/e-smith/signal-event nethserver-dnsmasq-save