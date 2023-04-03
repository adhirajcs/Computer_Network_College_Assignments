#!/bin/bash

# 3. Write a shell script to find the maximum of three numbers provided as command line arguments.

if [ $1 -ge $2 ] && [ $1 -ge $3 ]
then
    echo "$1 is the maximum of the 3 numbers."
elif [ $2 -ge $1 ] && [ $2 -ge $3 ]
then
    echo "$2 is the maximum of the 3 numbers."
else
    echo "$3 is the maximum of the 3 numbers."
fi

<<com
OUTPUT -

$ bash q3.sh 100 3 700
700 is the maximum of the 3 numbers.


$ bash q3.sh 3 4 7
7 is the maximum of the 3 numbers.

com
