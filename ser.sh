#!/bin/bash

SERVICE_NAME="your_service_name"

if systemctl status $SERVICE_NAME > serfile; then
  echo "$SERVICE_NAME is running"
else
  echo "$SERVICE_NAME is not running, starting..."
  systemctl start $SERVICE_NAME
fi

