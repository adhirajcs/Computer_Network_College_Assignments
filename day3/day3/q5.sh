#!/bin/bash

# 5. Write a shell script that displays a list of all files in the current directory to which you have read, write and execute permissions.

echo "List of files in the current directory with read, write and execute permissions:"
echo "-----------------------------------------------------------------------------"

for file in *
do
    if [ -r "$file" ] && [ -w "$file" ] && [ -x "$file" ]
    then
        echo "$file"
    fi
done


<<com
OUTPUT -

$ bash q5.sh
List of files in the current directory with read, write and execute permissions:
-----------------------------------------------------------------------------
a.txt

com
