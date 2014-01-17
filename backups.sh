#!/bin/sh
PATH=/bin:/usr/bin:/usr/sbin
if [ ! "$1" ]; then echo "Supply a user name please."; exit 1; fi
hostdate="`hostname`.$1"
tar -cpzf /var/$hostdate.tar.gz /root /boot/loader.conf /etc /usr/local/etc /usr/share/skel /home /var/log /var/db/pkg
du /var/$hostdate.tar.gz
mv /var/$hostdate.tar.gz "/home/$2"
du "/home/$2/$hostdate.tar.gz"
chown -R "$2:$2" "/home/$2"
echo "Backups done!" 
