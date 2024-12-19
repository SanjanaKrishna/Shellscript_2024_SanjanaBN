#!bin/bash
echo "Filename"
read file_name
echo "The Details"

while read line
do
  $line | awk -F "" '{print $4}'

done < $file_name
