#!/usr/bin/env bash

error() {
  printf '%s\n' "$*"
  exit 1
}

main() {
  (($# == 2)) || error 'Usage: hamming.sh <string1> <string2>'

  one=$1
  second=$2

  ((${#one} == ${#second})) || error 'left and right strands must be of equal length'

  count=0
  for ((i = 0; i < "${#one}"; i++)); do
    if [[ ${one:i:1} != "${second:i:1}" ]]; then
      ((count++))
    fi
  done
  echo "$count"
}

main "$@"
