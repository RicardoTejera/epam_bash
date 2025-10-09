#!/bin/bash

# Function to find and print only the shortest string
shortest() {
    # Handle case with no arguments
    if [[ $# -eq 0 ]]; then
        echo "No arguments provided"
        return
    fi

    local min="${1}"
    for arg in "$@"; do
        if [[ ${#arg} -lt ${#min} ]]; then
            min="$arg"
        fi
    done

    echo "$min"
}