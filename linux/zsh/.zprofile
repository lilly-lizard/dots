#if ! pgrep deluged &> /dev/null ; then deluged &> $HOME/.config/deluge/deluged_log; fi

# start X11
startx &> ~/.config/X11/startx_log
