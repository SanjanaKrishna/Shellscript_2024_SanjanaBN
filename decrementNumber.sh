#!/bin/bash
echo "Enter the starting NUMBER"
read num
n=$num
for i in {1..5}; do
	n=$((n-1))
  echo "Value of number decremented by $i:$n"
  
done

