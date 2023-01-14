# if ! pgrep deluged &> /dev/null ; then deluged &> $HOME/.config/deluge/deluged_log; fi

# disable auto-mute for line-out while headphones are plugged in
/home/david/Documents/bin/disable-auto-mute.sh

# if tty1
if [[ "$(tty)" == "/dev/tty1" ]] then
	# start X11
	startx &> ~/.config/X11/startx_log
fi
