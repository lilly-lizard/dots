#!/bin/sh

#systemctl --user stop pipewire.socket
#systemctl --user stop pipewire.service
cd /sys/class/sound/hwC1D0
echo "auto_mute = false" | tee -a hints
echo "1" | tee -a reconfig
#systemctl --user start pipewire.socket
