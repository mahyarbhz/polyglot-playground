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

# I could have just done this:
#
# forwards
#reversed=''
#for ((i = 0; i < ${#string}; i++)); do
#    reversed="${string:i:1}$reversed"
#done
#
# or backwards
#reversed=''
#for ((i = ${#string} - 1; i >= 0; i--)); do
#    reversed+="${string:i:1}"
#done
#
# or even this:
#
#reversed=$( echo "$string" | rev )
# or
#reversed=$( rev <<< "$string" )
