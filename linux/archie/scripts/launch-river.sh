#!/bin/sh

ln -sfT ~/.config/waybar-river ~/.config/waybar

#WLR_SCENE_DISABLE_VISIBILITY=1 WLR_RENDERER=vulkan dbus-launch --exit-with-session river &> /tmp/river.log
#WLR_SCENE_DISABLE_VISIBILITY=1 dbus-launch --exit-with-session river &> /tmp/river.log
dbus-launch --exit-with-session river -log-level debug > /tmp/river.log  2>&1
