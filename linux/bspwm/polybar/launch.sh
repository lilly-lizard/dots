#!/usr/bin/zsh

# Terminate already running bar instances
killall -q polybar

#echo "---" | tee -a /tmp/polybar_bottom1.log /tmp/polybar_bottom_left.log
#echo "---" | tee -a /tmp/polybar_bottom2.log /tmp/polybar_bottom_right.log
#echo "---" | tee -a /tmp/polybar_top.log /tmp/polybar_top.log
echo "---" | tee -a /tmp/polybar_bottom_left.log /tmp/polybar_bottom_left.log
echo "---" | tee -a /tmp/polybar_bottom_right.log /tmp/polybar_bottom_right.log

if [ -z "$FOREGROUND_BR"	]; then export FOREGROUND_BR=$FOREGROUND;	fi
if [ -z "$TRANSPARENT_BR"	]; then export TRANSPARENT_BR=$TRANSPARENT;	fi
if [ -z "$GREY_BR"			]; then export GREY_BR=$GREY;				fi

FOREGROUND=$FOREGROUND_BR TRANSPARENT=$TRANSPARENT_BR GREY=$GREY_BR polybar --reload bottom-right >>/tmp/polybar_bottom_right.log 2>&1 &
polybar --reload bottom-left >>/tmp/polybar_bottom_left.log 2>&1 &

echo "bars launched."

# init sink indicator
#sleep 0.1
#DEFAULT_SINK=$(pactl info | sed -En 's/Default Sink: (.*)/\1/p')
#echo "DEFAULT_SINK = ${DEFAULT_SINK}" >> /tmp/polybar_top.log
#if [[ "${DEFAULT_SINK}" == "alsa_output.pci-0000_0c_00.3.analog-stereo" ]]
#then
#	polybar-msg action "#sound-sink-status.hook.1"
#elif [[ "${DEFAULT_SINK}" == "alsa_output.pci-0000_0c_00.3.analog-stereo" ]]
#then
#	polybar-msg action "#sound-sink-status.hook.2"
#fi
