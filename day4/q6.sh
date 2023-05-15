#!/bin/bash

# 6. Develop a shell script which displays all files with all attributes those have been created or modified in the month of November.

echo "-------------------------------------"
echo "Files Modified or created in November:"
echo "-------------------------------------"


find . -type f -newermt "nov 1" ! -newermt "dec 1" -ls




<<com
OUTPUT -

$ sh q6.sh 
-------------------------------------
Files Modified or created in November:
-------------------------------------
2023    4 -rw-r--r--   1 user   user        1234 Nov 10 12:34 ./test1.txt
2023    8 -rw-r--r--   1 user   user        5678 Nov 20 09:12 ./test2.txt
2023    4 -rw-r--r--   1 user   user        4321 Nov 27 15:42 ./test3.txt


com