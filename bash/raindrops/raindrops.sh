#!/usr/bin/env bash

main() {
    result=""

    if [ $(("$1" % 3)) -eq 0 ]; then
        result+="Pling"
    fi
    if [ $(("$1" % 5)) -eq 0 ]; then
        result+="Plang"
    fi
    if [ $(("$1" % 7)) -eq 0 ]; then
        result+="Plong"
    fi
    if [ ${#result} -eq 0 ]; then
        echo "$1"
    else
        echo "$result"
    fi
}

# call main with all of the positional arguments
main "$@"
