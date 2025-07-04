#!/bin/sh

doas modprobe -r psmouse
doas modprobe psmouse
if pgrep -x "river" > /dev/null
then
	libinput-gestures-setup stop
	libinput-gestures-setup start
fi
