#!/bin/sh
PATH=/bin:/sbin:/usr/bin:/usr/sbin
if [ ! "$1" ]; then echo "Supply a user name please."; exit 1; fi
pw unlock "$1"
