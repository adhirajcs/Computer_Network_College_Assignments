#!/bin/bash

<<com

1. Write a shell script to print the following pattern for any number of lines:

        *
      * * *
    * * * * *
  * * * * * * *
* * * * * * * * *

com


read -p "Enter the number of lines: " n

for (( i=n; i<2*n; i++ ))
do
    for(( j=1; j<2*n; j++ ))
        do
                if [ $j -le $i -a $(expr $i + $j) -ge $(expr 2 \* $n) ]
                then
                        echo -n "*"
                else
                        echo -n " "
                fi
        done
        echo
done




<<com
OUTPUT - 


Enter the number of lines: 5
    *    
   ***   
  *****  
 ******* 
*********

com