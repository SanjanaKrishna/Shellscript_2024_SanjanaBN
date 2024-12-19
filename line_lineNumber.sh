#!/bin/bash
echo "Enter filename"
read file
n=1
while read line
do
  echo "$n: $line"
  n=`expr $n + 1 `

done < $file
