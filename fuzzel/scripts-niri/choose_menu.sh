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
        ~/.config/fuzzel/scripts-niri/cliphist_menu.sh
        ;;
    "Power")
        ~/.config/fuzzel/scripts-niri/power_menu.sh
        ;;
    "System")
        ~/.config/fuzzel/scripts-niri/system_menu.sh
        ;;
    "Emoji")
        bemoji
        ;;
esac
