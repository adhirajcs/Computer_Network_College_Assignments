#!/bin/bash


# 4. Write a shell script to display the list of users as well as the number of users connected to the system.



users=$(who | awk '{print $1}')

num_users=$(echo "$users" | wc -w)

echo "List of currently logged in users: $users"
echo "Total number of users connected: $num_users"



<<com
OUTPUT - 

List of currently logged in users: adhiraj
Total number of users connected: 1

com