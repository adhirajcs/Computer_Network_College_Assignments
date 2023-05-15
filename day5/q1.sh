#!/bin/bash

# 1. Write a shell program that takes a number from user and prints the reverse of the number.


echo "Enter a number: "
read num

reverse=0

while [ $num -ne 0 ]
do
    remainder=$(( num%10 ))
    reverse=$(( reverse*10+remainder ))
    num=$(( num/10 ))
done
echo "Reverse of the num is: $reverse"


<<com
OUTPUT -

$ sh q1.sh
Enter a number: 
123456789
Reverse of the num is: 987654321

com