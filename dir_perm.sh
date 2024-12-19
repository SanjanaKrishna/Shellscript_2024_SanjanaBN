#!/bin/bash
echo "Enter the Folder:"
read dir
echo -e  "The directory(s) in $dir  are:\n  DIRECTORY : PERMISSIONS"
ls -lt $dir| grep "^d" | cut -c 2- |awk -F " " '{print $NF,$1}'

