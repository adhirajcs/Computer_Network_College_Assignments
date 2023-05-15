#!/bin/bash

# 4. Write a shell script which deletes all lines containing the word UNIX in the files supplied as arguments to this shell script.


if [ $# -lt 1 ]; then
  echo "Error: Please provide one or more file names as arguments."
  exit 1
fi


for file in "$@"; do
  if [ ! -f "$file" ]; then
    echo "Warning: File not found: $file"
  else
    sed -i '/UNIX/d' "$file"
    echo "Deleted lines containing 'UNIX' from file: $file"
  fi
done


<<com
OUTPUT - 

$ cat example.txt
This is a line with UNIX in it.
This is another line without UNIX.
Here is a third line with UNIX.

$ bash q4.sh example.txt
Deleted lines containing 'UNIX' from file: example.txt

$ cat example.txt
This is another line without UNIX.

com