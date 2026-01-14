#!/bin/bash

hyprctl devices -j | jq -r '.keyboards[] | select(.main == true) | select(.capsLock == true)' | grep -q . && echo "(CS)"

