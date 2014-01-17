#!/usr/local/bin/bash
# portupdate
csup /etc/csup-ports.conf && portupgrade -a && portsclean -CC && portsclean -DD
