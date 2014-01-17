#!/bin/sh
PATH=/bin:/sbin:/usr/bin:/usr/sbin
if [ ! "$1" ]; then echo "Supply a user name please."; exit 1; fi
rmuser "$1" 
chflags -R 0 "/home/$1"
rm -rf "/home/$1"
