#!/bin/bash
p=2
while [ $p -ne 100 ] ;do
for((i=2;i<$num;i++));do

	if [ $((num % i)) -eq 0 ];then
           echo "Not prime"     
	 exit
	fi
   done
echo "$num is prime"
p=`expr p + 1`

done

