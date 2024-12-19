#!/bin/bash
echo "Enter the number whose cube root we need to find:"
read num

cube_root=$(awk "BEGIN {print $num^(1/3)}")
echo "The cube root of $num is: $cube_root"

