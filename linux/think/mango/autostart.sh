#!/bin/sh

ln -sfT ~/.config/waybar-mango ~/.config/waybar

# notification daemon
dunst &> /tmp/dunst.log &

export THEME=$(cat ~/.config/theme/system_theme)
set-theme $THEME &
