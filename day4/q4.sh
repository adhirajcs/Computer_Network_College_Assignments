#!/bin/bash

# 4. Write a shell script to calculate the sum of digits of any number entered through keyboard.


echo "Enter a number: "
read num

sum=0
while [ $num -gt 0 ]
do
    digit=$((num%10))
    sum=$((sum+digit))
    num=$((num/10))
done

echo "Sum of the digits: $sum"


<<com
OUTPUT -

 $ sh q4.sh 
Enter a number: 
100
Sum of the digits: 1


com
