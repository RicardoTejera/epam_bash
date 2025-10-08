#!/bin/bash

# Place your code here

input="$1"  #input the value of temp
value="${input::-1}"      # check all char, except last
unit="${input: -1}"       # check last char

# converter of c and k
if [[ "$unit" == "C" || "$unit" == "c" ]]; then
    kelvin=$((value + 273))
    echo "${kelvin}K"
elif [[ "$unit" == "K" || "$unit" == "k" ]]; then
    celsius=$((value - 273))
    echo "${celsius}C"
fi
