#!/bin/bash

# status=$(bluetoothctl show | grep "Powered:" | awk '{print $2}')
# if [ "$status" == "yes" ]; then
#     echo "CONN"
# else
#     echo "DISC"
# fi

# Get current volume and mute status
SINK_INFO=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ 2>/dev/null)
VOLUME=$(echo "$SINK_INFO" | awk '{print int($2*100)}')
MUTED=$(echo "$SINK_INFO" | grep -q "MUTED" && echo true || echo false)

# Output JSON for Waybar
if [ "$MUTED" = "true" ]; then
    echo "󰝟"
else
    echo "${VOLUME}%"
fi
