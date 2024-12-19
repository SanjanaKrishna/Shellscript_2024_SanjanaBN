#!/bin/bash
echo "Enter the input file:"
read file_name 
#count=$(wc -l <  $file_name)
count=`expr wc -l < $file_name`
temp=$count
while [ $count -gt  0 ];do
  head -n $count  "$file_name" | tail -n 1
 # count=$((count - 1))
  count=`expr $count - 1`
done
