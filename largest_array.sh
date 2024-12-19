#!/bin/bash

array=(10 20 5 40 15)

#est=${array[0]}

for num in $array; do
  if [ $num -gt $largest ];then
    largest=$num
    num=`expr $num + 1`
  fi
done
echo "The largest element is: $largest"

