#!/bin/bash
echo "Enter number 1:"
read num1
echo "Enter number 2:"
read num2
echo "Enter number 3:"
read num3

if [ $num1 -gt $num2 ]
then
  if [ $num1 -gt $num3 ]
 then
     echo "$num1 is > $num2 and $num3"
  fi
elif [ $num2 -gt $num3 ]
  then
      echo "$num2 is > $num3 and $num1"
else
   echo "$num3 is > $num1 and $num2"
fi
