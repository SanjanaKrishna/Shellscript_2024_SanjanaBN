#!/bin/bash
day=`date '+%a'`
echo "Today is $day"

case $day in
 'Mon') find . -type f -mtime +10
	 ;;
 'Tue') grep -r -l "abc" *
	 ;;
 'Wed') grep -r -L "ssh" *
	 ;;
 'Thu') echo  "Enter a path "
	read path

	if [ -L $path ];then
	  echo "$path is a link"
	elif [ -f $path ];then
	  echo "$path is file"
	elif [ -d $path ]; then
	  echo "$path is Directory"
        else 
           echo "$path doesnot exits"
        fi	   
	 ;;
 'Fri') empty_files=$(find . -type f -empty)
       if [ -n "$empty_files" ]; then
        echo "Empty files:"
        echo "$empty_files"
       else
        echo "Empty files do not exist."
       fi
           ;;
 'default') echo "No task today" 
 
  esac 
