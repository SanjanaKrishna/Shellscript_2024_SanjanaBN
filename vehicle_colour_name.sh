#!/bin/bash
echo "Enter the filename:"
read file_name
echo " Name of the vehicle(s) in RED color"
while read line
do
model=`echo "$line" | awk -F " " '{print $2}'`
if [ $model ==  "red" ]
then
echo "$line" | awk -F " " '{ print $1}'
fi


done < $file_name

