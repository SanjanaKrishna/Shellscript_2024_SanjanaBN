#!/bin/bash

echo "NUMBER"

read num

n=1
i=0
sum=0

while [ $i -lt $num ]
do 
   sum=`expr $sum + $n`
   n=`expr $n + 2`
   i=`expr $i + 1`
done

echo $sum
