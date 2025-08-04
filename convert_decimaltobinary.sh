#!/bin/bash

# Read decimal number from user
read -p "Enter a decimal number: " dec

# Check if number is non-negative
if [ "$dec" -lt 0 ]; then
    echo "Only non-negative numbers are supported."
    exit 1
fi

# Special case for 0
if [ "$dec" -eq 0 ]; then
    echo "Binary: 0"
    exit 0
fi

binary=""

# Conversion logic
while [ "$dec" -gt 0 ]
do
    rem=$(( dec % 2 ))
    binary="$rem$binary"
    dec=$(( dec / 2 ))
done

echo "Binary: $binary"

