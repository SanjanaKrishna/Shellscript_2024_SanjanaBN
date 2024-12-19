#!/bin/bash
echo "Path"
read name
if [ -f $name ]
then
  echo "File path"
elif [ -d $name ]
then
  echo "Directory"
elif [ -L $name ]
then
  echo "Link"
else
  echo "Path doesnot exists"
fi
