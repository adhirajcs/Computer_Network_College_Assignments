#!/bin/bash


# 5. Write a shell script to list the name of files under the current directory that starts with a vowel.



files=$(ls -1 | grep -E '^[aeiouAEIOU]' | tr '\n' ' ')

if [[ -z "$files" ]]; then
  echo "No files found that start with a vowel."
else
  echo "Files that start with a vowel:"
  echo "$files"
fi



<<com
OUTPUT - 

No files found that start with a vowel.


Files that start with a vowel:
a.c 

com