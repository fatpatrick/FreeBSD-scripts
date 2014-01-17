#!/bin/sh
if [ ! "$1" ]; then echo Supply a user name please.; exit 1; fi
echo " "
pw usermod $1 -m && pw usermod $1 -w random
