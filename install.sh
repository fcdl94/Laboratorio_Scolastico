#!/bin/bash

yum install ansible git vim 

ln -s /var/lib/tftpboot /root/tftpboot
ln -s /var/www/html /root/www
mkdir -p /root/www/ks/preseed
cp edubuntu.seed /root/www/ks/preseed
cp postseed.sh /root/www/ks/preseed
cp -r tftpboot/* /root/tftpboot/