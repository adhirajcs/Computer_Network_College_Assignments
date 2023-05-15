#!/bin/bash

# 3. Write a shell script to find whether a number is divisible by 11.


echo "Enter a number to check if it is divisible by 11: "
read num


sum_alt=0
sum_other=0
remainder=0


while [ $num -gt 0 ]
do

  remainder=$(( num % 10 ))


  if [ $(( ${#num} % 2 )) -eq $(( ${#remainder} % 2 )) ]
  then

    sum_alt=$(( sum_alt + remainder ))
  else

    sum_other=$(( sum_other + remainder ))
  fi


  num=$(( num / 10 ))
done


diff=$(( sum_other - sum_alt ))


if [ $(( diff % 11 )) -eq 0 ]
then
  echo "The number is divisible by 11"
else
  echo "The number is not divisible by 11"
fi


<<com
OUTPUT -

$ bash q3.sh 
Enter a number to check if it is divisible by 11: 
891
The number is divisible by 11


$ bash q3.sh 
Enter a number to check if it is divisible by 11: 
235
The number is not divisible by 11


com