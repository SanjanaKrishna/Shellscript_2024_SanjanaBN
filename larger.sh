#!/bin/bash
echo "Enter number 1:"
read num1
echo "Enter number 2:"
read num2

if [ $num1 > $num2 ]
then
  echo "$num1 is > $num2"
elif [ $num1 < $num2 ]
then
  echo "$num1 is < $num2"
else
  echo "$num1 eq $num2"
fi
