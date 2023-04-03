#!/bin/bash

# 4. Write a shell script to check whether a given number is prime or not.

num=$1
is_prime=true

if [ $num -eq 0 ] || [ $num -eq 1 ]
then
    is_prime=false
fi

for (( i=2; i-le$((num/2)); i++ ))
do
    if [ $((num % i)) -eq 0 ]
    then
        is_prime=false
        break
    fi
done

if $is_prime
then
    echo "$num is a Prime Number."
else
    echo "$num is not a Prime Number."
fi


<<com
OUTPUT -

$ bash q4.sh 30
30 is not a Prime Number.


$ bash q4.sh 29
29 is not a Prime Number.

com
