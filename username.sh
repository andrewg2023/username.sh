#!/bin/bash
# username.sh
# author: Andrew Goad
# date: 3/22/23

echo "Username must follow these rules:"
echo "- Only lowercase letters, digits, and underscore (_) characters are allowed."
echo "- Must start with a lowercase letter."
echo "- Must contain at least three but no more than 12 characters."

while true; do
  read -p "Enter a username: " username
  if [[ $username =~ ^[a-z][a-z0-9_]{2,11}$ ]]; then
    echo "Thank you! The username '$username' is valid."
    exit 0
  else
    echo "Invalid username. Please try again."
  fi
done
