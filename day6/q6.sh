#!/bin/bash


<<com

6. Devise a menu-driven shell program that accepts values from 1 to 4 and performs action depending
upon the number keyed in:
1) List of users currently logged in
2) Present date
3) Present working directory
4) Quit

com


while true; do
  # Display menu
  echo "Enter a number from 1 to 4:"
  echo "1. List of users currently logged in"
  echo "2. Present date"
  echo "3. Present working directory"
  echo "4. Quit"

  # Read user input
  read choice

  # Perform action based on user input
  case "$choice" in
    1) who ;;
    2) date ;;
    3) pwd ;;
    4) break ;;
    *) echo "Invalid input. Please enter a number from 1 to 4." ;;
  esac

  echo # Print an empty line for readability
done


<<com
OUTPUT - 

Enter a number from 1 to 4:
1. List of users currently logged in
2. Present date
3. Present working directory
4. Quit
1

Enter a number from 1 to 4:
1. List of users currently logged in
2. Present date
3. Present working directory
4. Quit
2
Fri May 12 15:41:26 UTC 2023

Enter a number from 1 to 4:
1. List of users currently logged in
2. Present date
3. Present working directory
4. Quit
3
/workspaces/cloud/Assignments/Network_Assgn/day6

Enter a number from 1 to 4:
1. List of users currently logged in
2. Present date
3. Present working directory
4. Quit
4


com