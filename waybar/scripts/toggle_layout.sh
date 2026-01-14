#!/bin/bash

MAIN_KEYBOARD=$(hyprctl devices -j | jq -r '.keyboards[] | select(.main) | .name')

if [ -z "$MAIN_KEYBOARD" ]; then
    echo "Error: keyboard could not found" >&2
    exit 1
fi

hyprctl switchxkblayout "$MAIN_KEYBOARD" next
