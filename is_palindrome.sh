#!/bin/bash

# Read number from user
read -p "Enter a number: " num

# Store original number
original=$num
reverse=0

# Reverse the number
while [ "$num" -gt 0 ]
do
    digit=$(( num % 10 ))
    reverse=$(( reverse * 10 + digit ))
    num=$(( num / 10 ))
done

# Check for palindrome
if [ "$original" -eq "$reverse" ]; then
    echo "$original is a palindrome number."
else
    echo "$original is not a palindrome number."
fi

