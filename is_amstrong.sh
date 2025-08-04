#!/bin/bash

# Read number from user
read -p "Enter a number: " num

# Store original number
original=$num

# Find number of digits
n=${#num}

sum=0

# Temporary variable for processing
temp=$num

# Calculate sum of digits raised to power n
while [ "$temp" -gt 0 ]
do
    digit=$(( temp % 10 ))
    pow=1

    # Calculate digit^n
    for (( i=0; i<n; i++ ))
    do
        pow=$(( pow * digit ))
    done

    sum=$(( sum + pow ))
    temp=$(( temp / 10 ))
done

# Check if Armstrong
if [ "$sum" -eq "$original" ]; then
    echo "$original is an Armstrong number."
else
    echo "$original is not an Armstrong number."
fi

