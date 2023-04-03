#!/bin/bash

# 2. Write a shell script to find out whether any year input through the keyboard is a leap year or not. If no argument is supplied the current year should be assumed.

if [ -z "$1" ]
then
    year=$(date +%Y)
else
    year=$1
fi    


if [ $((year % 400)) -eq 0 ]
then
    echo "$year is a leap year."

elif [ $((year %100)) -eq 0 ]
then
    echo "$year is not a leap year"

elif [ $((year %4)) -eq 0 ]
then
    echo "$year is a leap year"

else
    echo "$year is not a leap year"
fi


<<com
OUTPUT -

$ bash q2.sh 2019
2019 is not a leap year

com
