#!/bin/sh

ln -sfT ~/.config/waybar-river ~/.config/waybar

#dbus-launch --exit-with-session /usr/bin/river
dbus-launch --exit-with-session river
