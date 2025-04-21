#!/bin/sh

#WLR_SCENE_DISABLE_VISIBILITY=1 WLR_RENDERER=vulkan dbus-launch --exit-with-session river &> /tmp/river.log
#WLR_SCENE_DISABLE_VISIBILITY=1 dbus-launch --exit-with-session river &> /tmp/river.log
dbus-launch --exit-with-session river &> /tmp/river.log
