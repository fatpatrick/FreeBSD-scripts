#!/bin/sh
PATH=/bin:/usr/bin:/usr/sbin:/usr/local/sbin
SSHPORT=`cat /etc/ssh/sshd_config|grep Port|grep -iv Gateway|awk '{print $2}'`
SSHKEY=/root/key/auth_key
if [ ! "$1" ]; then echo "Supply a user name please."; exit 1; fi
# pw useradd -n "$1" -u "$2" -s /usr/local/bin/bash -L luser -m && password=` pw usermod "$1" -w random | sed 's/.* //' ` && pw usermod "$1" -p -1
pw useradd -n "$1" -u "$2" -s /usr/local/bin/bash -L luser -m
pw groupmod sshYAZ -m "$1" 
/usr/local/sbin/setquota -u -f /home -bh4000MB -bs3775MB -ih84948 -is81992 $1
mkdir /home/"$1"/.ssh
cp $SSHKEY /home/"$1"/.ssh/authorized_keys
chmod 700 /home/"$1"/.ssh
chmod 600 /home/"$1"/.ssh/authorized_keys
chown -R "$1":"$1" /home/"$1"/.ssh
# rm $SSHKEY 
# echo "User $1 added to `hostname` ssh port $SSHPORT with password $password"
echo "User $1 added to `hostname` ssh port $SSHPORT"
