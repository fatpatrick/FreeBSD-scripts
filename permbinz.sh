#!/bin/sh
# -edit 18/10/11 FreeBSD binary permissions script, ideally to be used before adding any users. chmod 700 it and put it in your path. edit accordingly.
PATH=/bin

# /bin
chmod 500 /bin/csh
chmod 500 /bin/tcsh
chmod 550 /bin/domainname
chmod 550 /bin/kenv
chmod 550 /bin/uuidgen
chmod 500 /bin/rmail
chmod 550 /bin/getfacl
chmod 500 /bin/chflags
chmod 500 /bin/setfacl
chmod 500 /bin/rcp

# /sbin
chmod 550 /sbin/adjkerntz
chmod 550 /sbin/atacontrol
chmod 550 /sbin/atmconfig
chmod 550 /sbin/bsdlabel
chmod 550 /sbin/badsect
chmod 550 /sbin/camcontrol
chmod 550 /sbin/ccdconfig
chmod 550 /sbin/clri
chmod 550 /sbin/comcontrol
chmod 550 /sbin/ddb
chmod 550 /sbin/devd
chmod 550 /sbin/devfs
chmod 550 /sbin/dhclient
chmod 550 /sbin/dhclient-script
chmod 550 /sbin/disklabel
chmod 550 /sbin/dmesg
chmod 550 /sbin/dump
chmod 550 /sbin/dumpfs
chmod 550 /sbin/fastboot
chmod 550 /sbin/fasthalt
chmod 550 /sbin/fdisk
chmod 550 /sbin/ffsinfo
chmod 550 /sbin/fsck
chmod 550 /sbin/fsck_4.2bsd
chmod 550 /sbin/fsck_ffs
chmod 550 /sbin/fsck_msdosfs
chmod 550 /sbin/fsck_ufs
chmod 550 /sbin/fsdb
chmod 550 /sbin/fsirand
chmod 550 /sbin/gbde
chmod 550 /sbin/gcache
chmod 550 /sbin/gconcat
chmod 550 /sbin/geli
chmod 550 /sbin/geom
chmod 550 /sbin/ggatec
chmod 550 /sbin/ggated
chmod 550 /sbin/ggatel
chmod 550 /sbin/gjournal
chmod 550 /sbin/glabel
chmod 550 /sbin/gmirror
chmod 550 /sbin/gmultipath
chmod 550 /sbin/gnop
chmod 550 /sbin/gpart
chmod 550 /sbin/graid3
chmod 550 /sbin/growfs
chmod 550 /sbin/gsched
chmod 550 /sbin/gstripe
chmod 550 /sbin/gvinum
chmod 550 /sbin/gvirstor
chmod 550 /sbin/halt
chmod 550 /sbin/hastctl
chmod 550 /sbin/hastd
chmod 550 /sbin/ifconfig
chmod 550 /sbin/ipf
chmod 550 /sbin/ipfs
chmod 550 /sbin/ipfstat
chmod 550 /sbin/ipftest
chmod 550 /sbin/ipfw
chmod 550 /sbin/ipmon
chmod 550 /sbin/ipnat
chmod 550 /sbin/ippool
chmod 550 /sbin/ipresend
chmod 550 /sbin/iscontrol
chmod 550 /sbin/kldconfig
chmod 550 /sbin/kldload
chmod 550 /sbin/kldstat
chmod 550 /sbin/kldunload
chmod 550 /sbin/mdconfig
chmod 550 /sbin/mdmfs
chmod 550 /sbin/mknod
chmod 550 /sbin/mksnap_ffs
chmod 550 /sbin/mount
chmod 550 /sbin/mount_cd9660
chmod 550 /sbin/mount_mfs
chmod 550 /sbin/mount_msdosfs
chmod 550 /sbin/mount_newnfs
chmod 550 /sbin/mount_nfs
chmod 550 /sbin/mount_ntfs
chmod 550 /sbin/mount_nullfs
chmod 550 /sbin/mount_udf
chmod 550 /sbin/mount_unionfs
chmod 550 /sbin/natd
chmod 550 /sbin/newfs
chmod 550 /sbin/newfs_msdos
chmod 550 /sbin/nextboot
chmod 550 /sbin/nfsiod
chmod 550 /sbin/nos-tun
chmod 550 /sbin/pfctl
chmod 550 /sbin/pflogd
chmod 550 /sbin/quotacheck
chmod 550 /sbin/rcorder
chmod 550 /sbin/rdump
chmod 550 /sbin/reboot
chmod 550 /sbin/recoverdisk
chmod 550 /sbin/restore
chmod 550 /sbin/rmd160
chmod 550 /sbin/route
chmod 550 /sbin/routed
chmod 550 /sbin/rrestore
chmod 550 /sbin/rtquery
chmod 550 /sbin/rtsol
chmod 550 /sbin/savecore
chmod 550 /sbin/setkey
chmod 550 /sbin/shutdown
chmod 550 /sbin/spppcontrol
chmod 550 /sbin/swapctl
chmod 550 /sbin/swapoff
chmod 550 /sbin/swapon
chmod 550 /sbin/sysctl
chmod 550 /sbin/tunefs
chmod 550 /sbin/umount
chmod 550 /sbin/zfs
chmod 550 /sbin/zpool

# /usr/bin
chmod 550 /usr/bin/Mail
chmod 550 /usr/bin/banner
chmod 550 /usr/bin/brandelf
chmod 500 /usr/bin/at
chmod 500 /usr/bin/users
chmod 500 /usr/bin/nsupdate
chmod 500 /usr/bin/ypchsh
chmod 500 /usr/bin/lpr
chmod 500 /usr/bin/lpq
chmod 500 /usr/bin/lp
chmod 500 /usr/bin/tftp
chmod 500 /usr/bin/slogin
chmod 500 /usr/bin/last
chmod 500 /usr/bin/lastcomm
chmod 500 /usr/bin/mesg
chmod 500 /usr/bin/mail
chmod 500 /usr/bin/wall
chmod 500 /usr/bin/whereis
chmod 500 /usr/bin/telnet
chmod 500 /usr/bin/logger
chmod 500 /usr/bin/nm
chmod 550 /usr/bin/ssh
chmod 550 /usr/bin/w
chmod 550 /usr/bin/who
chmod 550 /usr/bin/nc
chmod 550 /usr/bin/netstat
chmod 550 /usr/bin/sockstat
chmod 550 /usr/bin/dig
chmod 550 /usr/bin/nslookup
chmod 550 /usr/bin/ypcat
chmod 550 /usr/bin/locate
chmod 550 /usr/bin/finger
chmod 550 /usr/bin/strings
chmod 550 /usr/bin/slogin
chmod 550 /usr/bin/rpcinfo
chmod 550 /usr/bin/rpcgen
chmod 550 /usr/bin/systat
chmod 550 /usr/bin/uptime
chmod 550 /usr/bin/pftp
chmod 550 /usr/bin/logins
chmod 550 /usr/bin/sftp
chmod 550 /usr/bin/rusers
chmod 500 /usr/bin/rwall
chmod 500 /usr/bin/rwho
chmod 550 /usr/bin/scp
chmod 500 /usr/bin/sockstat
chmod 500 /usr/bin/rup
chmod 500 /usr/bin/ruptime
chmod 500 /usr/bin/rwall
chmod 500 /usr/bin/chgrp
chmod 500 /usr/bin/chkey
chmod 500 /usr/bin/chat
chmod 500 /usr/bin/opiekey
chmod 500 /usr/bin/rpcgen
chmod 500 /usr/bin/rpcinfo
chmod 500 /usr/bin/showmount
chmod 550 /usr/bin/stat
chmod 550 /usr/bin/unalias
chmod 550 /usr/bin/whois
chmod 500 /usr/bin/ypmatch
chmod 500 /usr/bin/ypwhich
chmod 500 /usr/bin/yyfix


# /usr/sbin
chmod 550 /usr/sbin/jail
chmod 550 /usr/sbin/jls
chmod 550 /usr/sbin/jexec
chmod 550 /usr/sbin/pkg_info
chmod 550 /usr/sbin/tcpdump
chmod 550 /usr/sbin/mailwrapper
chmod 550 /usr/sbin/arp
chmod 550 /usr/sbin/iostat
chmod 500 /usr/sbin/IPXrouted
chmod 500 /usr/sbin/ac
chmod 500 /usr/sbin/adduser
chmod 500 /usr/sbin/audit
chmod 500 /usr/sbin/auditd
chmod 500 /usr/sbin/chkgrp
chmod 500 /usr/sbin/chroot
chmod 500 /usr/sbin/cpucontrol
chmod 500 /usr/sbin/diskinfo
chmod 500 /usr/sbin/dtrace
chmod 500 /usr/sbin/diskinfo
chmod 500 /usr/sbin/freebsd-update
chmod 500 /usr/sbin/ftp-proxy
chmod 500 /usr/sbin/getfmac
chmod 500 /usr/sbin/getpmac
chmod 500 /usr/sbin/lastlogin
chmod 500 /usr/sbin/memcontrol
chmod 500 /usr/sbin/mergemaster
chmod 500 /usr/sbin/mount_nwfs
chmod 500 /usr/sbin/mount_portalfs
chmod 500 /usr/sbin/mount_smbfs
chmod 500 /usr/sbin/mountd
chmod 500 /usr/sbin/moused
chmod 500 /usr/sbin/mptable
chmod 500 /usr/sbin/mtree
chmod 500 /usr/sbin/named
chmod 500 /usr/sbin/named-checkconf
chmod 500 /usr/sbin/named-checkzone
chmod 500 /usr/sbin/named-compilezone
chmod 500 /usr/sbin/named.reconfig
chmod 500 /usr/sbin/named.reload
chmod 500 /usr/sbin/ndp
chmod 500 /usr/sbin/ndisgen
chmod 500 /usr/sbin/ntpd
chmod 500 /usr/sbin/ntpdate
chmod 500 /usr/sbin/ntpdc
chmod 500 /usr/sbin/ntptime
chmod 500 /usr/sbin/ntptrace
chmod 500 /usr/sbin/callbootd
chmod 500 /usr/sbin/crashinfo
chmod 500 /usr/sbin/ugidfw
chmod 500 /usr/sbin/vipw
chmod 500 /usr/sbin/tcpdrop
chmod 500 /usr/sbin/tcpdump



chmod 4550 /usr/local/sbin/lsof
chmod 555 /usr/local/bin/screen
chmod 550 /usr/bin/vmstat
chmod 500 /usr/bin/talk
chmod 550 /usr/bin/uptime
