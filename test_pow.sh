#!/bin/bash

# Import the functions
source ./functions.sh

# Allow calling functions manually
func="$1"
shift

case "$func" in
    pow)
        pow "$@"
        ;;
    *)
        
esac
