#!/bin/sh

wlr-randr --output DP-1 --pos 0,250 --adaptive-sync disabled
wlr-randr --output DP-2 --transform 270 --pos 2560,0 --adaptive-sync disabled

# launcher
if [[ -z $(pidof ulauncher) ]]; then
        ulauncher --hide-window &> /tmp/ulauncher.log &
fi

if [[ -z $(pidof ulauncher) ]]; then
        mpd-mpris &> /tmp/mpd-mpris.log &
fi

# notification daemon
dunst &> /tmp/dunst.log &

export THEME=$(cat ~/.config/theme/theme_system)
set-theme $THEME &
