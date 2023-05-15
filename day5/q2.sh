#!/bin/bash

# 2. Write a shell script to determine whether two numbers input through keyboard are prime to each other.


echo "Enter the 1st number: "
read num1

echo "Enter the 2nd number: "
read num2

gcd () {
    a=$1
    b=$2

    while [ $b -ne 0 ]
    do 
        remainder=$(( a%b ))
        a=$b
        b=$remainder
    done

    echo $and
}

result=$(gcd $num1 $num2)

if [ $((result)) -eq 1 ]
then
    echo "$num1 and $num2 are prime to each other."
else
    echo "$num1 and $num2 are prime to each other."
fi


<<com
OUTPUT -

$ sh q2.sh
Enter the 1st number: 
7
Enter the 2nd number: 
12
7 and 12 are prime to each other.

com