#!/bin/bash

input="$*" # type and combine all arg into single string

input_no_space="${input// /}" # rm blank spaces

# set letters, num and sym to 0.
letters=0
numbers=0
symbols=0

# analyze each char.
for (( i=0; i<${#input_no_space}; i++ )); do
    c="${input_no_space:$i:1}"
    if [[ "$c" =~ [A-Za-z] ]]; then
        ((letters++))
    elif [[ "$c" =~ [0-9] ]]; then
        ((numbers++))
    elif [[ "$c" =~ [\*\!\@\#\$\%\^\&\(\)\_\+] ]]; then
        ((symbols++))
    fi
done

echo "Numbers: $numbers Symbols: $symbols Letters: $letters" # print output
