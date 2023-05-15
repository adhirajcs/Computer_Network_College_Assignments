#!bin/bash

# 1. Write a shell script to find the factorial value of any integer entered through the keyboard.

echo "Enter an integer: "
read num

fact=1

for (( i=1; i<=num; i++ ))
do
fact=$((fact*i))
done

echo "Factorial of $num is $fact."

<<com
OUTPUT -

$ sh q1.sh 
Enter an integer: 
6
Factorial of 6 is 720.


com
