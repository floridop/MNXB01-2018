#!/bin/bash

#SBATCH -J "Mohsin homework5"

#SBATCH --time=1

echo "CPU Information"

cat /proc/cpuinfo

echo "Memory Information"

cat /proc/meminfo

echo "Uptime Information"

cat /proc/uptime

echo " free disk space"

df

echo "user information"

who

echo "user id information"

hostname

echo "No of entries in /etc"
ls /etc | wc -l

echo -e "No. of entries in /usr/bin"

ls /usr/bin | wc -l

sleep 3m






