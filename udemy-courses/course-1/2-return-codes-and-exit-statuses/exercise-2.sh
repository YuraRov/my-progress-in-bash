#!/bin/bash

# This script accepts a file or directory name as an argument. 
# It reports if it is a regular file, a directory, or other type of file.
# 1. If it is a regular file, exits with a 0 exit status.
# 2. If it is a directory, exits with a 1 exit status.
# 3. If it is some other type of file, exits with a 2 exit status.

FILE_PATH=$1

if [ -f "$FILE_PATH" ]
then
  echo "$FILE is a regular file."
  exit 0
elif [ -d "$FILE_PATH" ]
then
  echo "$FILE is a directory."
  exit 1
else
  echo "$FILE is something other than a regular file or directory."
  exit 2
fi