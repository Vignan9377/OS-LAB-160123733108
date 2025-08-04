#!/bin/bash

# Read base-5 number from user
read -p "Enter a base-5 number: " base5

# Validate that the number contains only digits 0-4
if [[ ! $base5 =~ ^[0-4]+$ ]]; then
    echo "Invalid base-5 number. Only digits 0 to 4 are allowed."
    exit 1
fi

len=${#base5}
decimal=0
power=1

# Process each digit from right to left
for (( i=len-1; i>=0; i-- ))
do
    digit=${base5:$i:1}
    decimal=$(( decimal + digit * power ))
    power=$(( power * 5 ))
done

echo "Decimal: $decimal"

