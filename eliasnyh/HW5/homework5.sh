#!/bin/bash

echo "Hostname is: "
hostname

echo "Uptime is: "
uptime

echo "Disk space usage information produced by the df command: "
df

echo "Number of entries in /etc: "
ls /etc | wc -l

echo "Number of entries in /usr/bin: "
ls /usr/bin | wc -l

echo "I will now sleep for 3 minutes."
sleep 10s
