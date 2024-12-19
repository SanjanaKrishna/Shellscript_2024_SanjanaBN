#!/bin/bash
echo "Enter the pattern"
read pattern
grep -L "$pattern" * > pfile

if [ $? -eq 1 ]
then 
  echo "The below file DOESNOT contains the pattern"
  cat pfile
else
  grep -l -r "$pattern" * >pfile2
  echo "The files contain the pattern"
  cat pfile2
fi
