#!/bin/sh

options="Clipboard
Power
Emoji
System"

chosen=$(echo -e "$options" | fuzzel \
    --dmenu \
    --prompt "Choose menu: " \
    --lines 4 \
    --width 25 \
    --icon-theme Papirus-Dark)

case "$chosen" in
    "Clipboard")
        ~/.config/fuzzel/scripts/cliphist_menu.sh
        ;;
    "Power")
        ~/.config/fuzzel/scripts/power_menu.sh
        ;;
    "System")
        ~/.config/fuzzel/scripts/system_menu.sh
        ;;
    "Emoji")
        bemoji
        ;;
esac
