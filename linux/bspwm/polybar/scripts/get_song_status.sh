#!/bin/bash

STATUS=$($HOME/.config/polybar/scripts/get_playerctl_status.sh)

if [ "$STATUS" = "Stopped" ]; then
    echo "No music is playing"
elif [ "$STATUS" = "Paused"  ]; then
    polybar-msg -p "$(pgrep -f "polybar --reload top")" hook playerctl-play-pause 2 >/dev/null
    playerctl --player=playerctld metadata --format "{{ title }} - {{ artist }}"
elif [ "$STATUS" = "No player is running"  ]; then
    echo $""
else
    polybar-msg -p "$(pgrep -f "polybar --reload top")" hook playerctl-play-pause 1 >/dev/null
    playerctl --player=playerctld metadata --format "{{ title }} - {{ artist }}"
fi