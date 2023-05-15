#!/bin/bash

# 1. Write a shell script, which gets executed the moment a user logs in. It should display the message “GOOD MORNING” or “GOOD AFTERNOON” or “GOOD EVENING” depending upon the time at which the user logs in.



hour=$(date +%H)

if [ $hour -lt 12 ]; then
  echo "Good morning!"
elif [ $hour -lt 18 ]; then
  echo "Good afternoon!"
else
  echo "Good evening!"
fi


<<com
OUTPUT - 

Good afternoon!

com