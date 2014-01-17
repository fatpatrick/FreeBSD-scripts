#!/bin/sh
# FreeBSD hardening script, ideally to be used before adding any users. chmod 700 it and put it in your path. edit accordingly.

# Reset some system flags
chflags 000 /usr/bin/chpass
chflags 000 /usr/bin/chfn
chflags 000 /usr/bin/chsh
chflags 000 /usr/bin/login
chflags 000 /usr/bin/opieinfo
chflags 000 /usr/bin/opiepasswd
chflags 000 /usr/bin/passwd
chflags 000 /usr/bin/su
chflags 000 /usr/bin/crontab
chflags 000 /usr/bin/ypchpass
chflags 000 /usr/bin/ypchfn
chflags 000 /usr/bin/ypchsh
chflags 000 /usr/bin/passwd
chflags 000 /usr/bin/yppasswd

# Change permissions on binaries.
# /sbin
chmod 500 /sbin/mount
chmod 4511 /sbin/ping
chmod 4511 /sbin/ping6
chmod 500 /sbin/sysctl
chmod 500 /sbin/umount
# /usr/bin
chmod 500 /usr/bin/chpass
chmod 500 /usr/bin/chfn
chmod 500 /usr/bin/chsh
chmod 500 /usr/bin/ypchpass
chmod 500 /usr/bin/ypchfn
chmod 500 /usr/bin/ypchsh
chmod 500 /usr/bin/chgrp
chmod 4111 /usr/bin/crontab
chmod 500 /usr/bin/ctlstat
chmod 500 /usr/bin/cvsbug
chmod 500 /usr/bin/finger
chmod 500 /usr/bin/fstat
chmod 500 /usr/bin/last
chmod 500 /usr/bin/lastcomm
chmod 500 /usr/bin/locate
chmod 4500 /usr/bin/lock
chmod 500 /usr/bin/logger
chmod 500 /usr/bin/logins
chmod 4511 /usr/bin/login
chmod 4500 /usr/bin/opieinfo
chmod 4500 /usr/bin/opiepasswd
chmod 4511 /usr/bin/passwd
chmod 4500 /usr/bin/quota
chmod 500 /usr/bin/nc
chmod 500 /usr/bin/netstat
chmod 500 /usr/bin/ftp
chmod 500 /usr/bin/ssh
chmod 500 /usr/bin/procstat
chmod 500 /usr/bin/rpcgen
chmod 500 /usr/bin/rpcinfo
chmod 500 /usr/bin/sockstat
chmod 4550 /usr/bin/su
chmod 500 /usr/bin/systat
chmod 500 /usr/bin/vmstat
chmod 500 /usr/bin/w
chmod 500 /usr/bin/who
chmod 500 /usr/bin/whois
chmod 500 /usr/bin/chpass
cp /usr/bin/yppasswd /usr/bin/yppasswd2
rm /usr/bin/yppasswd
mv /usr/bin/yppasswd2 /usr/bin/yppasswd
chmod 500 /usr/bin/yppasswd
chmod 4550 /usr/bin/wall
chmod 4550 /usr/bin/write

# /usr/sbin
chmod 4500 /usr/sbin/authpf
chmod 500 /usr/sbin/tcpdchk
chmod 500 /usr/sbin/tcpdmatch
chmod 500 /usr/sbin/tcpdrop
chmod 500 /usr/sbin/tcpdump
chmod 500 /usr/sbin/mountd
chmod 500 /usr/sbin/ip6addrctl
chmod 500 /usr/sbin/ipfwpcap
chmod 500 /usr/sbin/iostat
chmod 500 /usr/sbin/swapinfo
chmod 500 /usr/sbin/tcpdchk
chmod 4500 /usr/sbin/trpt
chmod 4500 /usr/sbin/authpf
chmod 4500 /usr/sbin/timedc
chmod 4550 /usr/sbin/traceroute
chmod 4500 /usr/sbin/traceroute6
chmod 4500 /usr/sbin/authpf-noip

chmod 4500 /usr/libexec/sendmail/sendmail
chmod 4500 /usr/libexec/ulog-helper
chmod 4511 /usr/libexec/ssh-keysign

chmod 555 /usr/local/bin/screen

# Directory security && dot filez

chmod 711 /
chmod 711 /home
chmod 711 /home/*
chmod 700 /root
chmod 700 /boot
chmod 700 /rescue
chmod 711 /sbin
chmod 755 /bin
chmod 700 /sys
chmod 700 /usr/src
chmod 700 /usr/obj
chmod 700 /usr/ports
chmod 711 /usr/sbin
chmod 711 /usr/local/sbin
chmod 755 /usr/bin
chmod 755 /usr/local/bin

chmod 711 /var/mail
chmod 750 /var/log
chmod 600 /var/log/*
chmod 600 /var/log/utx.lastlogin
chmod 600 /var/log/utx.log
chmod 600 /var/run/utx.active
chmod 711 /var/db/pkg
chmod 640 /var/run/dmesg.boot
chmod 400 /var/db/locate.database
chmod 711 /var/spool
chmod 711 /etc
chmod 711 /etc/ssh
chmod 640 /etc/ssh/sshd_config
chmod 600 /etc/crontab
chmod 600 /etc/pf.conf
chmod 640 /etc/rc.conf
chmod 640 /etc/rc.bsdextended
chmod 600 /etc/sysctl.conf
chmod 600 /etc/master.passwd
chmod 640 /etc/ftpusers
chmod 640 /etc/syslog.conf

#cat > /usr/share/skel/dot.screenrc <<EOF
# Screen 256 colors
#defutf8 on
#defflow off
#vbell off
#autodetach on
#startup_message off
# allow bold colors - necessary for some reason
#attrcolor b ".I"
# tell screen how to set colors. AB = background, AF=foreground
#termcapinfo xterm-256color 'Co#256:AB=\E[48;5;%dm:AF=\E[38;5;%dm'
# erase background with current bg color
#defbce "on"
# make the shell in every window a login shell
#shell -$SHELL
#EOF

chmod 600 /usr/share/skel/dot.screenrc
chflags schg /usr/share/skel/dot.screenrc
touch /usr/share/skel/dot.bash_history
chmod 600 /usr/share/skel/dot.bash_history
touch /usr/share/skel/dot.history
chmod 600 /usr/share/skel/dot.history
chflags sappnd /usr/share/skel/dot.bash_history
chflags sappnd /usr/share/skel/dot.history
#chflags sappnd /home/*/.history
#chflags sappnd /home/*/.bash_history
chflags sappnd /var/log
chflags sappnd /var/log/*
#mkdir /tmp/uscreens
#chmod 1777 /tmp/uscreens
#chflags sunlnk /tmp/uscreens


