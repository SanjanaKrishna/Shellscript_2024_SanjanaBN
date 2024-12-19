#!/bin/bash

echo "Enter a number"
read num

if [ $num -le 1 ];then
 echo "Not prime"
fi

for((i=2;i<$num;i++));do

	if [ $((num % i)) -eq 0 ];then
           echo "Not prime"     
	 exit
	fi
# echo "Number is prime"

done
echo "PRIME"

