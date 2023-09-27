#!/bin/sh

cp ~/.config/gitignore_global .

cp ~/.config/nvim/init.vim nvim/

cp ~/.config/zsh/.zshrc zsh/
cp ~/.config/zsh/.zshenv zsh/
cp ~/.config/alacritty/alacritty.yml alacritty/

cp ~/.config/river/init river
cp -r ~/.config/waybar waybar

cp ~/.config/Code\ -\ OSS/User/settings.json vscode/
cp ~/.config/Code\ -\ OSS/User/keybindings.json vscode/

cp ~/Documents/bin/set-theme scripts/set-theme-think
