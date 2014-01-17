#!/bin/sh
PATH=/usr/local/sbin
if [ ! "$1" ]; then echo "Supply a user name please."; exit 1; fi
setquota -u -f / -bh70MB -bs68MB -ih8448 -is8192 $1
