#!/bin/sh

layout=$(hyprctl devices -j | jq -r '.keyboards[] | select(.main == true) | .active_keymap')
case $layout in
    "English (US)") echo "EN" ;;
    "Russian") echo "RU" ;;
    "German") echo "DE" ;;
    *) echo "$layout" ;;
esac
