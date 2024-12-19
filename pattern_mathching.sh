#!/bin/bash
read pattern
grep -r -l "$pattern" * > pfile

if [ $? -eq 0 ]
then 
  echo "The below file contains the pattern"
  cat pfile
else
  echo "The patten is not present in any file"
fi
