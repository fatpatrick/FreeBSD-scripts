#!/bin/sh
# FreeBSD directory and file hardening script, ideally to be used before adding any users. chmod 700 it and put it in your path. edit accordingly. 
PATH=/bin:/sbin:/usr/bin:/usr/bin

# system binary directories
chmod 711 /
chmod 700 /root
chmod 751 /sbin
chmod 751 /usr/sbin
chmod 751 /usr/local/sbin

# var directory
chmod 751 /var/account

chmod 400 /var/db/locate.database
chmod 750 /var/log
chmod 600 /var/log/*
chmod 640 /var/log/wtmp
chmod 640 /var/run/utmp
chmod 640 /var/log/l5i.log
chmod 640 /var/log/auth.log
chflags sappnd /var/log
chflags sappnd /var/log/*
chmod 711 /var/mail
chmod 711 /var/named/etc/namedb
chmod 640 /var/run/dmesg.boot
chmod 640 /var/run/utmp

# remove /var/tmp and create symlink
mv /var/tmp/* /tmp/
rm -rf /var/tmp
ln -s /tmp /var/tmp

# etc directory
chmod 711 /etc
chmod 700 /etc/bluetooth
chmod 600 /etc/crontab
chmod 640 /etc/ftpusers
chmod 640 /etc/fstab*
chmod 751 /etc/geli
chmod 640 /etc/login.conf
chmod 640 /etc/make.conf*
chmod 700 /etc/mail
chmod 600 /etc/master.passwd
chmod 700 /etc/mtree
chmod 751 /etc/pam.d
chmod 751 /etc/periodic
chmod 600 /etc/pf.conf
chmod 640 /etc/resolv.conf
chmod 640 /etc/rc.bsdextended
chmod 640 /etc/rc.conf
chmod 600 /etc/sysctl.conf 
chmod 640 /etc/syslog.conf
chmod 751 /etc/rc.d
chmod 751 /etc/security
chmod 711 /etc/ssh
chmod 640 /etc/ssh/sshd_config
chmod 751 /etc/ssl
touch /etc/COPYRIGHT

# home and other system directories
chmod 711 /home
chmod 700 /home/*
chmod 700 /sys
chmod 700 /usr/src
chmod 700 /usr/obj

# create some user skel files
cat >/usr/share/skel/dot.screenrc<<'EOF' 
# Screen 256 colors                                                                                                                                                                                                                  
defutf8 on                                                                                                                                                                                                                                 
defflow off                                                                                                                                                                                                                           
vbell off                                                                                                                                                                                                                             
autodetach on                                                                                                                                                                                                                         
startup_message off         
# allow bold colors - necessary for some reason                                                                                                                                                                                      
attrcolor b ".I"                                                                                                                                                                                                                  
# tell screen how to set colors. AB = background, AF=foreground                                                                                                                                                                      
termcapinfo xterm-256color 'Co#256:AB=\E[48;5;%dm:AF=\E[38;5;%dm'                                                                                            
# erase background with current bg color                                                                                                                                                                                  
defbce "on"                                                                                                                                                                                                                          
# make the shell in every window a login shell                                                                                                                                                                                       
shell -$SHELL                                                                                                                                                                                              
EOF

# this requires adduser.sh script - remove this entry if you don't understand what it does

cat >/usr/share/skel/dot.bash_login<<'EOF'
#!/bin/sh
# password enforcer ~alowishus~ 
smashstack () { echo "DON'T DO DAT MA! YOU NEED TO SET A NEW PASSWORD."; kill -9 $PPID; }
trap smashstack 2
printf '\n %s\n\nACHTUNG! READ THIS: ENTER ORGINAL PASS FIRST AND THEN COPY PASTE THE PASS ABOVE TWICE. SAVE IT AT HOME!\n\n' "$(head -c 200 /dev/urandom | tr -cd '[:graph:]' | head -c 15)"
/usr/bin/passwd && rm $HOME/.bash_login && rm $HOME/.nopasswd
EOF

# end of adduser.sh specific entry

cat >/usr/share/skel/dot.cshrc<<'EOF'
# $FreeBSD: src/etc/root/dot.cshrc,v 1.30.10.1.6.1 2010/12/21 17:09:25 kensmith Exp $
#
# .cshrc - csh resource script, read at beginning of execution by each shell
#
# see also csh(1), environ(7).
#

alias h		history 25
alias j		jobs -l
alias la	ls -a
alias lf	ls -FA
alias ll	ls -lA

# A righteous umask
umask 22

set path = (/sbin /bin /usr/sbin /usr/bin /usr/games /usr/local/sbin /usr/local/bin $HOME/bin)

setenv	EDITOR	vi
setenv	PAGER	most
setenv	BLOCKSIZE  M	

if ($?prompt) then
	# An interactive shell -- set some stuff up
        set prompt = "\n%{\033[31m%}%n@%{\033[1;34m%}%M%{\033[0m%} #"	
	set filec
	set history = 1000000
	set savehist = 1000000
        set histfile = /.history
	set mail = (/var/mail/$USER)
	if ( $?tcsh ) then
		bindkey "^W" backward-delete-word
		bindkey -k up history-search-backward
		bindkey -k down history-search-forward
	endif
endif
EOF

# create and set perms on some skel files and user dotfiles

touch /usr/share/skel/dot.bash_history
touch /usr/share/skel/dot.history
touch /usr/share/skel/dot.nopasswd
rm /usr/share/skel/dot.mail*
rm /usr/share/skel/dot.rhosts
rm /usr/share/skel/dot.login*
chmod 600 /usr/share/skel/*
chflags schg /usr/share/skel/dot.screenrc
chflags schg /usr/share/skel/dot.bash_profile
chflags schg /usr/share/skel/dot.bashrc
chflags sappnd /usr/share/skel/dot.bash_history
chflags sappnd /usr/share/skel/dot.history
chflags sappnd /home/*/.history
chflags sappnd /home/*/.bash_history
