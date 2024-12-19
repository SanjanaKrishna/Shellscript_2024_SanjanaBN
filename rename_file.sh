#!/bin/bash
ls *.txt > f4
while read line
do
 # name=echo "$line"	
 name=`echo "$line" | awk -F "." '{print $1}'`
# echo $name
  mv $name.txt  $name.html
done < f4
