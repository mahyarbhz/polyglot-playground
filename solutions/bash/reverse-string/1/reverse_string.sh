#!/usr/bin/env bash

main () {
    input="$1"
#    letters=($(echo "$input" | grep -o .))
    letters=()
    while IFS= read -r -n1 char; do
        letters+=("$char")
    done <<< "$input"
    reversed=""
    for ((i=${#letters[@]}-1; i>=0; i--)); do
	reversed="$reversed${letters[i]}"
    done
    echo "$reversed"
}

main "$@"
