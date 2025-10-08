#!/bin/bash

# Function to calculate integer powers
pow() {
    local a=$1
    local b=$2
    local result=1

    for ((i=0; i<b; i++)); do
        result=$((result * a))
    done

    echo $result
}

# Check that exactly 2 arguments are passed
if [[ $# -ne 2 ]]; then
    echo "Usage: $0 <base> <exponent>"
    exit 1
fi

# Call the function with command-line arguments
pow "$1" "$2"
