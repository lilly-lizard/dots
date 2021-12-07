if ! pgrep deluged &> /dev/null ; then deluged &> $HOME/.config/deluge/deluged_log; fi
startx &> ~/.config/X11/startx_log
