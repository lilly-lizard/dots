#!/bin/sh

cd ~

source ~/.config/zsh/.zshenv

export XDG_CONFIG_HOME=$HOME/.config
export _JAVA_AWT_WM_NONREPARENTING=1
export XCURSOR_SIZE=24

exec Hyprland
