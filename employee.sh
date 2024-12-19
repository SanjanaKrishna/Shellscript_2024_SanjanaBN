#!/bin/bash
echo "Enter the filename:"
read file_name
echo " List of EMPLOYEE(s),EMP_ID working in DevOps"
while read line
do
model=`echo "$line" | awk -F " " '{print $3}'`
if [ $model ==  "DevOps" ]
then
echo "$line" | awk -F " " '{ print $1,$2}'
fi


done < $file_name

