#!/usr/bin/bash

receive_pipe="/tmp/waybar-ddc-module-rx-primary"
step=10
bus=4
brightness_command=_

ddcutil_fast() {
    # adjust the bus number and the multiplier for your display
    # multiplier should be chosen so that it both works reliably and fast enough
    ddcutil --noverify --bus "$bus" --sleep-multiplier .03 "$@"
}

ddcutil_slow() {
    ddcutil --maxtries 15,15,15 --bus "$bus" "$@"
}

# takes ddcutil commandline as arguments
print_brightness() {
    if brightness=$("$@" -t getvcp 10); then
        brightness=$(echo "$brightness" | cut -d ' ' -f 4)
    else
        brightness=-1
    fi
    echo '{ "percentage":' "$brightness" '}'
}

rm -rf $receive_pipe
mkfifo $receive_pipe

# in case waybar restarted the script after restarting/replugging a monitor
print_brightness ddcutil_slow

while true; do
    read -r brightness_command < $receive_pipe
    case $brightness_command in
        + | -)
            ddcutil_fast setvcp 10 $brightness_command $step
            ;;
        max)
            ddcutil_fast setvcp 10 100
            ;;
        min)
            ddcutil_fast setvcp 10 0
            ;;
    esac
    print_brightness ddcutil_fast
done
