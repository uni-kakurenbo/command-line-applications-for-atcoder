#! /bin/bash

function is_useable() {
    if printf '%s\n' "${TYPES[@]}" | grep -qx "$(basename "$1")"; then
        return 0
    else
        return 1
    fi
}
