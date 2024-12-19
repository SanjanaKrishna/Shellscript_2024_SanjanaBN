#!/bin/bash
echo "Enter a NUMBER:"
read num
n=`expr $num % 2`

if [ $n -eq 0 ]
then
  echo "Number is EVEN"
else
  echo "Number is ODD"
fi
