#!/bin/bash
echo "checking disk utilization"
usage=$(df -h | awk 'NR==2{print $5}'|sed 's/%//')

if [ $usage -gt 80 ]; then
    echo "Disk utilization is above 80%. Please take necessary action."
else
    echo "Disk utilization is below 80%. No action needed."
fi