#!/bin/bash

echo "Listing all running services on the system..."

# List all services with 'active (running)' status
systemctl list-units --type=service --state=running

echo "End of running services list."

