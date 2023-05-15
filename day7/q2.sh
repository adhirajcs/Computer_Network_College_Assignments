#!/bin/bash

# 2. Write a shell script, which reports names and sizes of all files in a directory (directory should be supplied as an argument to the shell script) whose size exceeds 100 bytes. The filenames should be printed in decreasing order of their sizes. The total number of such files should also be reported.


if [ $# -eq 0 ]; then
  echo "Error: Please provide a directory as an argument."
  exit 1
fi

if [ ! -d "$1" ]; then
  echo "Error: Directory not found."
  exit 1
fi

files=$(find "$1" -type f -size +100c -printf "%s %p\n" | sort -rn)

num_files=$(echo "$files" | wc -l)

echo "List of files in $1 with size greater than 100 bytes:"
echo "$files"

echo "Total number of files: $num_files"


<<com
OUTPUT - 

$ bash q2.sh day6 
List of files in day6 with size greater than 100 bytes:
1303 day6/q6.sh
629 day6/q1.sh
598 day6/q3.sh
451 day6/q2.sh
421 day6/q5.sh
399 day6/q4.sh
Total number of files: 6

com