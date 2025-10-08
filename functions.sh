#!/bin/bash

pow() {
    local a=$1
    local b=$2
    local result=1

    for ((i=0; i<b; i++)); do
        result=$((result * a))
    done

    echo $result
}

# Example usage
pow 2 5   # Output: 32
pow 3 3   # Output: 27
