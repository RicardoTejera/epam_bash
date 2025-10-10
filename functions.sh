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
    # Handle case with no arguments
    if [[ $# -eq 0 ]]; then
        echo "No arguments provided"
        return
    fi

    # If exactly three arguments, print only the first two
    if [[ $# -eq 3 ]]; then
        echo "$1"
        echo "$2"
        return
    fi

    # If more than three arguments, print ALL shortest strings
    if [[ $# -gt 3 ]]; then
        # Encuentra la longitud mínima
        local min_len=${#1}
        for arg in "$@"; do
            if [[ ${#arg} -lt $min_len ]]; then
                min_len=${#arg}
            fi
        done

        # Imprime todos los que tengan esa longitud mínima
        for arg in "$@"; do
            if [[ ${#arg} -eq $min_len ]]; then
                echo "$arg"
            fi
        done
        return
    fi

    # If exactly two arguments, print only the shortest
    if [[ $# -eq 2 ]]; then
        if [[ ${#1} -le ${#2} ]]; then
            echo "$1"
        else
            echo "$2"
        fi
    fi
}

print_log() {
    local message="$1"
    local timestamp
    timestamp=$(date +"%Y-%m-%d %H:%M")
    echo "[$timestamp] $message"
}