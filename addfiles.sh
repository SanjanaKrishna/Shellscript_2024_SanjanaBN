#!/bin/bash
echo "enter a file name1 to add line"
read file_name1
echo "enter a file name2 to add line"
read file_name2
num=1
n=$(cat $file_name1 | wc -l)
while [[ $n -ge 1 ]]
do
        a=$(head -$num $file_name1 | tail -1 >> sample.txt)
        b=$(head -$num $file_name2 | tail -1 >> sample.txt)
        num=expr $num + 1
        n=expr $n - 1
done
