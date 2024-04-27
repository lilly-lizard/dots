# if ! pgrep deluged &> /dev/null ; then deluged &> $HOME/.config/deluge/deluged_log; fi

export QT_QPA_PLATFORMTHEME=qt5ct

# if tty1
if [[ "$(tty)" == "/dev/tty1" ]] then
	# disable auto-mute for line-out while headphones are plugged in
	#~/Documents/bin/disable-auto-mute-user.sh
	# start X11
	#startx &> ~/.config/X11/startx_log
fi
