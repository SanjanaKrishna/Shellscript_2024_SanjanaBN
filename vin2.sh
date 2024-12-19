#!/bin/bash

# Stress the CPU at 70% load using the 'matrixprod' method for 20 seconds
echo "Starting CPU stress test at 70% load using 'matrixprod' method..."
stress-ng --cpu 8 --cpu-load 70 --timeout 20 &

# Give some time for stress-ng to start
sleep 5

# Monitor CPU usage continuously during the stress test
cpu_threshold=60
alert_sent=0

for i in {1..10}; do
  cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')
  echo "Current CPU usage: $cpu_usage%"

  # Check if CPU usage exceeds the threshold
  if (( $(echo "$cpu_usage > $cpu_threshold" | bc -l) )) && [ $alert_sent -eq 0 ]; then
    echo "The CPU usage has exceeded the threshold ($cpu_threshold%)."
    echo "The CPU usage has reached $cpu_usage%, which exceeds the threshold of $cpu_threshold%." | mail -s "High CPU Usage Alert" vinay2397@gmail.com sanjanabn6@gmail.com
    alert_sent=1  # Avoid sending multiple alerts
  fi

  sleep 2  # Sample every 2 seconds
done

# Ensure stress-ng is terminated
wait
echo "CPU stress test completed."

