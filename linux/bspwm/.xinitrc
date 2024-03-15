#!/bin/sh

userresources=$HOME/.config/X11/.Xresources
usermodmap=$HOME/.config/X11/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps
if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi
if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi
if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi
if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

#xmodmap $HOME/.config/X11/.xmodmaprc

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# key repeat rate
xset r rate 200 35

# gamma adjust
#xgamma -gamma 0.7

MONITOR="$(cat ~/.config/archie/primary_monitor)"

# set second monitor to portrait
#xrandr --output HDMI-2 --rotate right --right-of HDMI-1

# set primary monitor position
xrandr --output $MONITOR --pos 0x500

# compositor (allows transparency)
picom -CGb -m 1.0 -i 1.0 2>&1 | tee /tmp/picom.log

# free wireless devices jic
#doas rfkill unblock all

# start dunst desktop notification manager (ctrl + space to dismiss notifications)
if [[ -z $(pidof dunst) ]]; then
	dunst &
fi

# start clipboard manager
if [[ -z $(pidof parcellite) ]]; then
	parcellite > /tmp/parcellite.log &
fi

# start app launcher
if [[ -z $(pidof ulauncher) ]]; then
	ulauncher --hide-window > /tmp/ulauncher.log &
fi

# start theme update daemon
if [[ -z $(pidof xsettingsd) ]]; then
	xsettingsd > /tmp/xsettingsd.log &
fi

exec echo "---" >>/tmp/sxhkd.log & echo "---" >>/tmp/bspwm.log
exec bspwm >>/tmp/bspwm.log 2>&1
