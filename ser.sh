#!/bin/bash

SERVICE="your_service_name"  # Replace with your actual service name

STATUS=$(systemctl is-active "$SERVICE")

if [ "$STATUS" = "active" ]; then
  echo "$SERVICE is running"
else
  echo "$SERVICE is NOT running"
  systemctl start "$SERVICE"  
fi
