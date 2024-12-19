#!/bin/bash
echo "Enter the input in array format:"
read -a array

largest=${array[0]}

for num in "${array[@]}"; do
  if [ $num -gt $largest ];then
    largest=$num
  fi
done
echo "The largest element is: $largest"

