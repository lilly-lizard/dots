#!/bin/bash
set -e

echo 'libinput-patched:'
LIBINPUT_PATCHED_VER=$(pacman -Qi libinput-patched | grep Version)
echo $LIBINPUT_PATCHED_VER

echo 'libinput:'
LIBINPUT_VER=$(pacman -Si libinput | grep Version)
echo $LIBINPUT_VER

if [ "$LIBINPUT_PATCHED_VER" ]; then
	echo -e "\nlibinput up to date."
	exit 0
fi

echo -e "\nlibinput not up to date...\n"

cd /home/david/Documents/source/INSTALLED/libinput-patched-build
git pull upstream main

makepkg -Ccsif

echo -e "\nlibinput successfully updated!"
echo "new version:"
LIBINPUT_PATCHED_VER=$(pacman -Qi libinput-patched | grep Version)
echo $LIBINPUT_PATCHED_VER
