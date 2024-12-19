#!/bin/bash


du=`df -h . | awk -F " " 'NR > 1 {print $(NF-1)}' | cut -c 1,2`
echo "CPU usage: $du"

if [ $du -gt 30 ];then
  echo "The threshold has reached"

  echo "The CPU threshold has reached" | mail -s "Cleanup memory" sanjnabn6@gmail.com
fi
