#!/bin/bash
echo "Enter the n numbers"
read num
n=$num
prod=1
while [ $num -gt 0 ]
do
prod=`expr $prod \* $num`
num=`expr $num - 1`
done
echo "The factorial of given $n numbers is:$prod"
