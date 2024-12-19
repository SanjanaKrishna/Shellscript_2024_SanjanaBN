#!/bin/bash
day=`date +%a`
echo "Today is $day"

case $day in
 'Mon') touch file_s file_s1
	 ;;
 'Tue') mv f1 f3
	 ;;
 'Wed') echo "Hello World" > f1
	 ;;
 'Thu') echo -e "On $day we display file content: "
	 cat sample
	 ;;
 'Fri') rm f1
	 ;;
 'default') 
 
  esac 
