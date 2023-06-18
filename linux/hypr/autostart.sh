#!/bin/sh

config=$HOME/.config/hypr
scripts=$HOME/Documents/bin/hyprland

# key remapper
evremap remap /home/david/.config/evremap/remap-config.toml > /tmp/evremap.log &

# notification daemon
dunst > /tmp/dunst.log &

# clipboard manager
wl-clip-persist -c both > /tmp/wl-clip-persist.log &

# waybar
waybar > /tmp/waybar.log &
$scripts/tools/mpris-to-json.py &

# auth agent
/usr/lib/policykit-1-pantheon/io.elementary.desktop.agent-polkit > /tmp/io.elementary.desktop.agent-polkit.log &

# wallpaper
~/Documents/bin/set-theme $(cat ~/.config/theme/system_theme)

hyprctl setcursor Layan-border-cursors 24

dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP
notify-send -a antarc "hello $(whoami)" &
