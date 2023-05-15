#!/bin/bash

# 3. Write a shell script to concatenate two files and count the number of characters, number of words and number of lines in the resultant file.


if [ $# -ne 2 ]; then
  echo "Error: Please provide two file names as arguments."
  exit 1
fi

if [ ! -f "$1" ] || [ ! -f "$2" ]; then
  echo "Error: One or both files not found."
  exit 1
fi

cat "$1" "$2" > result.txt

num_chars=$(wc -c < result.txt)
num_words=$(wc -w < result.txt)
num_lines=$(wc -l < result.txt)

echo "Concatenated file: result.txt"
echo "Number of characters: $num_chars"
echo "Number of words: $num_words"
echo "Number of lines: $num_lines"

<<com
OUTPUT - 

$ bash q3.sh file1.txt file2.txt
Concatenated file: result.txt
Number of characters: 156
Number of words: 28
Number of lines: 5

com