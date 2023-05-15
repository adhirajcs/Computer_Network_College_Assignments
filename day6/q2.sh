#!/bin/bash


# 2. Write a shell script to test whether a given string is palindrome or not.


read -p "Enter a string: " str

str=`echo $str | tr -d '[:punct:]' | tr '[:upper:]' '[:lower:]'`

reverse=`echo $str | rev`

if [ "$str" == "$reverse" ]; then
    echo "$str is a palindrome"
else
    echo "$str is not a palindrome"
fi


<<com
OUTPUT - 

Enter a string: 123321
123321 is a palindrome


Enter a string: 123132
123132 is not a palindrome

com