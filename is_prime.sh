#!/bin/bash

# Read number from user
read -p "Enter a number: " num

# Edge cases
if [ "$num" -lt 2 ]; then
    echo "$num is not a prime number."
    exit 0
fi

# Assume number is prime
is_prime=1

# Check from 2 to sqrt(num)
for ((i = 2; i*i <= num; i++))
do
    if [ $((num % i)) -eq 0 ]; then
        is_prime=0
        break
    fi
done

# Print result
if [ "$is_prime" -eq 1 ]; then
    echo "$num is a prime number."
else
    echo "$num is not a prime number."
fi

