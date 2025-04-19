#!/bin/sh

cp ~/.config/gitignore_global .

cp ~/.config/nvim/init.vim nvim/
cp ~/.config/nvim/sub_init.lua.vim nvim/

cp ~/.config/zsh/.zshrc zsh/
cp ~/.config/zsh/.zshenv zsh/
cp ~/.config/alacritty/alacritty.yml alacritty/

cp ~/.config/river/init river/
cp -r ~/.config/hypr ./
cp -r ~/.config/waybar-hypr ./
cp -r ~/.config/waybar-river ./

cp -r ~/.config/fontconfig ./
cp -r ~/.config/lf ./
cp -r ~/.config/swaylock ./

cp ~/.config/Code\ -\ OSS/User/settings.json vscode/
cp ~/.config/Code\ -\ OSS/User/keybindings.json vscode/

cp ~/Documents/bin/apt-autoremove.sh scripts/
cp ~/Documents/bin/extract-music.sh scripts/
cp ~/Documents/bin/launch-river.sh scripts/
cp ~/Documents/bin/launch-hyprland.sh scripts/
cp ~/Documents/bin/rescan-wifi.sh scripts/
cp ~/Documents/bin/reset-mouse.sh scripts/
cp ~/Documents/bin/set-theme scripts/
cp ~/Documents/bin/screenshot.sh scripts/
cp ~/Documents/bin/wl-mirror-primary.sh scripts/

