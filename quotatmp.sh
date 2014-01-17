#!/bin/sh
setquota -u -f /tmp -bh50MB -bs45MB -ih4352 -is4096 $1
