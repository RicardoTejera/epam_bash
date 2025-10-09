#!/bin/bash
source ./functions.sh

func="$1"
shift

case "$func" in
    pow)
        pow "$@"
        ;;
    shortest)
        shortest "$@"
        ;;
    *)
        echo "Usage:"
        echo "  $0 pow <base> <exponent>"
        echo "  $0 shortest <string1> <string2> [string3 ...]"
        ;;
esac
