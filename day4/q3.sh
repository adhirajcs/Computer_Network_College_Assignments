#!/bin/bash

# 3. Write a shell script to print all prime numbers in a given range.

echo "Enter the range: "
read l
read u

echo "Prime numbers in the given range are "

for ((i=l; i<=u; i++ ))
do
    is_prime=true

    for ((j=2; j<=i/2; j++ ))
    do
        if [ $((i%j)) -eq 0 ]
        then
            is_prime=false
            break
        fi
    done
    if [ $is_prime = true ]
    then
        echo $i
    fi
done


<<com
OUTPUT -

$ bash q3.sh 
Enter the range: 
10
30
Prime numbers in the given range are 
11
13
17
19
23
29

com
