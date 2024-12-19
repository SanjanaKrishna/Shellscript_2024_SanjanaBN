#!/bin/bash
echo "Enter the filename:"
read file_name
echo " below is the name of the vehicles with the model 2015 or less than 2015"
while read line
do
model=$line | awk -F " " '{print $3}'
echo "$model"
#echo "$line" | awk -F " " '{ print $1}'



done < $file_name

