#!/bin/bash
echo "Enter the number who cube root we need to find"
read num

cube=$(bc -l <<< "$num^(1/3)")
echo "$cube"
