#!/bin/sh
# FreeBSD schg flags 'armour off' script.
PATH=/bin
chflags schg /boot/kernel
chflags schg /lib
chflags schg /libexec
chflags schg /bin
chflags schg /sbin
chflags schg /usr/sbin/sshd
chflags schg /usr/bin
chflags schg /usr/sbin
