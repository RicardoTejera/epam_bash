#!/bin/bash

IFS=',' read -r -a numbers <<< "$1"

sum=0 # Initialize sum to 0

for i in "${numbers[@]}" # list of num
do
  if (( i % 2 != 0 )) # If the number is not even, skip the rest of the loop
  then
  continue
  fi
  sum=$((sum + i)) # Add the number to the sum
done

echo "$sum" # Print the sum
