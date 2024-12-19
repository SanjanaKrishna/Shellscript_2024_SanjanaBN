#!/bin/bash
echo "Enter numbers in Array format:"
read -a array 
for num in "${array[@]}"; do
tmp=$num
prod=1
  while [ $tmp -gt 0 ]
  do
  prod=`expr $prod \* $tmp`
  tmp=$((tmp - 1))
  done
  echo "The factorial of $num is :$prod"

done
