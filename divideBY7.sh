#!/bin/bash
echo "Enter a NUMBER to divide:"
read num
output=`expr $num % 7`

if [ $output -eq  0 ];then
echo "Divisible by 7"
else
  echo "Not Divisible by 7, REMAINDER :$output"
fi
