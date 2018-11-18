#!/bin/sh
hostname
uptime
df
PASSWD=/etc/passwd
YUM=/usr/bin/yum
OUT=$(wc -l $PASSWD)
OUT1=$(wc -l $YUM)
echo "$OUT [$OUT1]"
sleep 2m
