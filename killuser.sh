#!/bin/sh
PATH=/bin:/sbin:/usr/bin:/usr/sbin
if [ ! "$1" ]; then echo "Supply a user name please."; exit 1; fi
killall -u "$1"
pw lock "$1"
