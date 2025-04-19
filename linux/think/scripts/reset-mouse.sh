#!/bin/sh

doas modprobe -r psmouse
doas modprobe psmouse
libinput-gestures-setup stop
libinput-gestures-setup start
