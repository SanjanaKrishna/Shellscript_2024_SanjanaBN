#!/bin/bash
num1=$1
num2=$2

echo "Enter the Integer one:"
read num1
echo "Enter the Integer two:"
read num2

sum=`expr $num1 - $num2`

echo "The sub of $num1 - $num2 is: $sum"

div=`expr $num1 % $num2`

echo "The division of $num1 % $num2 is: $div"
