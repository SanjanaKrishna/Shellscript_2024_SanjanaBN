#!/bin/bash
arr="10 5 69 45"
echo "Enter a number to search"
read number
found=false
for i in $arr 
do                               
        if [[ $i -eq $number ]]; then
        echo "the given number $number is present in an array"
        found=true
        fi
done
if [[ "$found" = "false" ]]
then
        echo "the number $number is not present in the array"

fi
