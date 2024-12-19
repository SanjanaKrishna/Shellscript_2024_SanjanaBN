#!/bin/bash
echo "NUMBER"
read num

if [ `expr $num % 2` -ne 0 ];then
	
	echo "Odd"

else 
     echo "EVEN"

fi

