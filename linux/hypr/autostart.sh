#!/bin/sh

config=$HOME/.config/hypr
scripts=$HOME/Documents/bin/hyprland

# clipboard manager
parcellite > /tmp/parcellite.log &

# notification daemon
dunst > /tmp/dunst.log &

# waybar
waybar > /tmp/waybar.log &
$scripts/tools/mpris-to-json.py &

# auth agent
/usr/lib/policykit-1-pantheon/io.elementary.desktop.agent-polkit > /tmp/io.elementary.desktop.agent-polkit.log &

# wallpaper
#$HOME/Documents/bin/wallpaper.sh $HOME/Pictures/wallpapers/4.jpg &
$HOME/Documents/bin/wallpaper.sh $HOME/Pictures/wallpapers/milad-fakurian-nY14Fs8pxT8-unsplash.jpg &

# key remapper
doas evremap remap $HOME/.config/evremap/remap-config.toml

dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP
notify-send -a antarc "hello $(whoami)" &
