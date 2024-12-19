#!/bin/bash
echo "File name:"
read f_name
n=0
while read line
do
count=`echo "$line" | wc -c`
n=`expr $n + 1`
echo "The count of charaters in line $n is $count"
done < $f_name
