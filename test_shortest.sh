#!/bin/bash

# Import the functions
source ./functions.sh

# Allow calling functions manually
func="$1"
shift

case "$func" in

    shortest)
        shortest "$@"
        ;;
    *)
        echo "Usage:"
        echo "  $0 shortest <string1> <string2> [string3 ...]"
        ;;
esac
