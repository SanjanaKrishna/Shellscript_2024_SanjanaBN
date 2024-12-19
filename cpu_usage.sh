#!/bin/bash

# Stress the CPU at 90% load 
echo "Starting CPU stress test at 70% load..."
stress-ng --cpu 32 --cpu-load 90 --timeout 30 &

disk_threshold=70

disk_usage=$(top -bn1| grep "Cpu(s)" | awk '{print $2 + $3}')

echo "Current CPU usage: $disk_usage%"

# Check if CPU utilisation exceeds the threshold
if [ "$disk_usage" > "$disk_threshold" ]; then
	echo "The CPU usage  has exceeded the threshold ($disk_threshold%)."
	echo "The CPU usage has reached $disk_usage%, which exceeds the threshold of $disk_threshold%." | mail -s "CPU Usage Alert"  sanjanabn6@gmail.com
fi	
echo "CPU stress test completed."

