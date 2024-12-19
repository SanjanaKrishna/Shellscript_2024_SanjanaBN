#!/bin/bash
echo "Enter the starting NUMBER"
read num
n=$num

for((i=1;i<6;i++)); do
	n=$((n-1))
  echo "Value of number $num decremented by $i:$n"
  
done

