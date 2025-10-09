#!/bin/bash

# Function to calculate integer powers
pow() {
    local a=$1
    local b=$2
    local result=1

    for ((i=0; i<b; i++)); do
        result=$((result * a))
    done

    echo "$result"
}

# Function to find the shortest string
shortest() {

    # If more than two arguments, print each string on a new line
    if [[ $# -eq 0 ]]; then
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


print_log() {
    local message="$1"
    local timestamp
    timestamp=$(date +"%Y-%m-%d %H:%M")
    echo "[$timestamp] $message"
}