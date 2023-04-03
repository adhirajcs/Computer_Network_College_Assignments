#!/bin/bash

# 1. Write a shell script to find out whether an integer input through the keyboard is an odd number or an even number.

echo "Enter an Integer: "
read num

if [ $((num % 2)) -eq 0 ]
then
    echo "$num is an Even Number."
else
    echo "$num is an Odd Number."
fi

<<com
OUTPUT -

$ bash q1.sh
Enter an Integer: 
4
4 is an Even Number.


$ bash q1.sh
Enter an Integer: 
7
7 is an Odd Number.

com
