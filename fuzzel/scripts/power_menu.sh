#!/bin/bash

lock_icon=""
reboot_icon=""
power_icon=""
exit_session_icon="󰈆"

options="$lock_icon Lock
$exit_session_icon Exit Session  
$reboot_icon Reboot
$power_icon Power Off"

choice=$(echo -e "$options" | fuzzel \
    --dmenu \
    --prompt "System: " \
    --lines 4 \
    --width 25 \
    --icon-theme Papirus-Dark)

case "$choice" in
    "$lock_icon Lock")
        hyprlock
        ;;
    "$exit_session_icon Exit Session")
        hyprctl dispatch exit
        ;;
    "$reboot_icon Reboot")
        systemctl reboot
        ;;
    "$power_icon Power Off")
        systemctl poweroff
        ;;
    "")
        exit 0
        ;;
esac

