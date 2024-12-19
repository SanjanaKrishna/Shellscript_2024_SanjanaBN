#!/bin/bash
echo "Do you want to print to 5 process with MAX CPU usage?"
read y

if [ "$y" = "y" ] || [ "$y" = "Y" ]; then
 top -b -n 1 -o +%CPU | head -n 12 | tail -n 5 

fi
