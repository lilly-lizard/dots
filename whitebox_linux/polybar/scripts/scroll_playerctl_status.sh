#!/bin/bash

# see man zscroll for documentation of the following parameters  
zscroll -l 30 \
		--scroll-padding " | " \
        --delay 0.1 \
        --match-command "$HOME/.config/polybar/scripts/get_playerctl_status.sh" \
        --match-text "Playing" "--scroll 1" \
        --match-text "Paused" "--scroll 0" \
        --update-check true "$HOME/.config/polybar/scripts/get_song_status.sh" &

wait