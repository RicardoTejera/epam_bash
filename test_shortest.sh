#!/bin/bash

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

shortest "$@"
