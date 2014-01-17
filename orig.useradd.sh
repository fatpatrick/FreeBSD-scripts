#!/bin/sh
if [ ! "$1" ]; then echo Supply a user name please.; exit 1; fi
echo " "
pw useradd -n $1 -s /usr/local/bin/bash -L luser && pw usermod $1 -m && pw usermod $1 -w random
/usr/local/sbin/setquota -u -f / -bh70MB -bs68MB -ih8448 -is8192 $1 
echo " "
echo Disk quotas added for $1!
echo " "
echo User $1 added!
