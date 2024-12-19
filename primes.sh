#!/bin/bash

count=0
num=2

while [ $count -lt 100 ]; do
  prime=1
  for ((i=2; i<num; i++)); do
    if [ $((num % i)) -eq 0 ]; then
      is_prime=0
      break
    fi
  done
  
  if [ $prime -eq 1 ]; then
    echo "$num"
    count=`expr $count + 1`
  fi
  
  num=`expr $num + 1`
done
