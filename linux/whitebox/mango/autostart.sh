#!/bin/sh

ln -sfT ~/.config/waybar-mango ~/.config/waybar

# launcher
if [[ -z $(pidof ulauncher) ]]; then
        ulauncher --hide-window &> /tmp/ulauncher.log &
fi

if [[ -z $(pidof mpd-mpris) ]]; then
        mpd-mpris &> /tmp/mpd-mpris.log &
fi

# notification daemon
dunst &> /tmp/dunst.log &

export THEME=$(cat ~/.config/theme/theme_system)
set-theme $THEME &
