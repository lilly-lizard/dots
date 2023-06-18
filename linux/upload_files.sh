#!/bin/sh
set -x

cp ~/.config/gitignore_global .

cp ~/.config/vim/.vimrc vim/
cp ~/.config/nvim/init.vim nvim/
cp ~/.config/nvim/sub_init.lua.vim nvim/
cp -r ~/.config/nvim/lua nvim/
cp ~/.config/nvim/plugins/molokai/colors/* ./nvim

cp ~/.config/zsh/.zshrc zsh/
cp ~/.config/zsh/.zshenv zsh/

cp ~/.config/alacritty/* alacritty/
cp -r ~/.config/rua/wrap_args.d rua/
cp -r ~/.config/lf/* lf/
cp -r ~/.config/ncmpcpp/* ncmpcpp/
cp ~/.config/mpd/mpd.conf mpd/

cp ~/.config/Code/User/settings.json vscode/
cp ~/.config/Code/User/keybindings.json vscode/

cp ~/.config/hypr/* hypr/
cp -r ~/Documents/bin/hyprland hypr/scripts
cp -r ~/.config/waybar/* waybar/
cp ~/Documents/bin/set-theme ./scripts
cp /usr/share/zsh/site-functions/_set-theme ./scripts
cp -r ~/.config/wlogout .
cp -r ~/.config/swaylock .
cp -r ~/.config/wofi .

cp /etc/pacman.d/hooks/* ./hooks
