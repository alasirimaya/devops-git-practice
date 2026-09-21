#!/bin/bash
echo "====System health report ===="
echo "cpu load:"
uptime
echo "Ram usage:"
free -h
echo "disk usage:"
df -h /
DISK_USAGE=$(df / | tail -1 | awk '{print $5}' | sed 's/%//')
if [ "$DISK_USAGE" -gt 80 ]; then
   echo "WARNING: Disk usage is above 80%!"
fi 
