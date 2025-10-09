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

shortest() {

    # Print each string on a new line if more than 2 arguments
    if [[ $# -gt 2 ]]; then
        for arg in "$@"; do
            echo "$arg"
        done
    fi

    # Find the shortest string
    local min="${1}"
    for arg in "$@"; do
        if [[ ${#arg} -lt ${#min} ]]; then
            min="$arg"
        fi
    done

    echo "$min"
}

# Check that at least one argument (function name) is given
if [[ $# -lt 1 ]]; then
    echo "Usage:"
    echo "  $0 pow <base> <exponent>"
    echo "  $0 shortest <string1> <string2> [string3 ...]"
    exit 1
fi

# Extract function name (first argument)
func="$1"
shift  # remove the function name from the arguments list

# Call the requested function with remaining arguments
case "$func" in
    pow)
        pow "$@"
        ;;
    shortest)
        shortest "$@"
        ;;
    *)
        echo "Unknown function: $func"
        echo "Available: pow, shortest"
        exit 1
        ;;
esac