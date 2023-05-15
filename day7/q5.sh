#!/bin/bash

# 5. Write a shell script which would receive a log name during execution, obtain information about it from password file and display this information on the screen in easily understandable format


echo "Please enter a login name:"
read login_name

user_info=$(grep "^$login_name:" /etc/passwd)

if [ -z "$user_info" ]; then
  echo "Error: User not found."
  exit 1
fi

username=$(echo "$user_info" | cut -d: -f1)
uid=$(echo "$user_info" | cut -d: -f3)
gid=$(echo "$user_info" | cut -d: -f4)
home_dir=$(echo "$user_info" | cut -d: -f6)
shell=$(echo "$user_info" | cut -d: -f7)

echo "Login name: $username"
echo "UID: $uid"
echo "GID: $gid"
echo "Home directory: $home_dir"
echo "Shell: $shell"

<<com
OUTPUT - 

Please enter a login name:
codespace
Login name: codespace
UID: 1000
GID: 1000
Home directory: /home/codespace
Shell: /bin/bash

com