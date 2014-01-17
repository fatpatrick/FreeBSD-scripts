#!/bin/sh
# -edit 18/10/11 FreeBSD suid/gid binary hardening script, ideally to be used before adding any users. chmod 700 it and put it in your path. edit accordingly.
PATH=/bin:/sbin:/usr/bin:/usr/sbin

# /sbin
chmod 4550 /sbin/ping
chmod 4550 /sbin/ping6
chmod 4500 /sbin/shutdown

# /usr/bin
# strip some system flags 
chflags 000 /usr/bin/chpass
chflags 000 /usr/bin/chfn
chflags 000 /usr/bin/chsh
chflags 000 /usr/bin/login
chflags 000 /usr/bin/opieinfo
chflags 000 /usr/bin/opiepasswd
chflags 000 /usr/bin/passwd
chflags 000 /usr/bin/rlogin
chflags 000 /usr/bin/rsh
chflags 000 /usr/bin/su
chflags 000 /usr/bin/crontab
chflags 000 /bin/rcp
chflags 000 /usr/bin/yppasswd

# /bin
chmod 000 /bin/rcp

# reset permissions
chmod 500 /usr/bin/rlogin
chmod 000 /usr/bin/rsh
chmod 000 /bin/rcp
chmod 500 /usr/bin/at
chmod 500 /usr/bin/atq
chmod 500 /usr/bin/atrm
chmod 500 /usr/bin/batch
chmod 500 /usr/bin/btsockstat
chmod 500 /usr/bin/chpass
chmod 500 /usr/bin/chfn
chmod 500 /usr/bin/chsh
chmod 500 /usr/bin/fstat
chmod 500 /usr/bin/lock
chmod 500 /usr/bin/login
chmod 550 /usr/bin/netstat
chmod 500 /usr/bin/opieinfo
chmod 500 /usr/bin/opiepasswd
chmod 4111 /usr/bin/passwd
chmod 4111 /usr/bin/crontab
chmod 4550 /usr/bin/su
chmod 500 /usr/bin/wall
chmod 500 /usr/bin/write
chmod 550 /usr/bin/lpq
chmod 500 /usr/bin/lpr
chmod 500 /usr/bin/lprm
chmod 500 /usr/sbin/authpf
chmod 500 /usr/sbin/lpc
chmod 500 /usr/sbin/ppp
chmod 500 /usr/sbin/timedc
chmod 550 /usr/sbin/traceroute
chmod 550 /usr/sbin/traceroute6
chmod 500 /usr/sbin/trpt

# /usr/bin
# reset system flags
chflags schg /usr/bin/chpass
chflags schg /usr/bin/chfn
chflags schg /usr/bin/chsh
chflags schg /usr/bin/login
chflags schg /usr/bin/opieinfo
chflags schg /usr/bin/opiepasswd
chflags schg /usr/bin/passwd
chflags schg /usr/bin/rlogin
chflags schg /usr/bin/rsh
chflags schg /usr/bin/su
chflags schg /usr/bin/crontab
chflags schg /bin/rcp

# /usr/local + misc
chmod 4550 /usr/local/sbin/lsof
chmod 500 /usr/libexec/sendmail/sendmail
cp /usr/bin/yppasswd /usr/bin/yppasswd2
rm /usr/bin/yppasswd
mv /usr/bin/yppasswd2 /usr/bin/yppasswd
chmod 500 /usr/bin/yppasswd
