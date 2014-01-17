#!/bin/sh
# FreeBSD schg flags 'armour off' script.
/bin/chflags noschg /boot
/bin/chflags noschg /lib
/bin/chflags noschg /libexec
/bin/chflags noschg /bin
/bin/chflags noschg /sbin
/bin/chflags noschg /usr/sbin/sshd
/bin/chflags noschg /usr/bin
/bin/chflags noschg /usr/sbin
