#!/bin/bash
echo "Enter file"
read file
echo "Enter pattern"
read pattern

count=$(wc -l < $file)

if [ "$count"  -lt 100 ]; then

	echo "File contain less than 100 lines"
else
        tail -n 100 $file > file1
        grep -c "$pattern" file1

fi
