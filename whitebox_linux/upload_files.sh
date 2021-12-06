#!/bin/sh

cp ~/.config/vim/.vimrc .
cp ~/.config/zsh/.zshrc .
cp ~/.config/zsh/.zshenv .
cp ~/.config/gitignore_global .

cp ~/.config/zsh/.zprofile .
cp ~/.xinitrc .
cp ~/.config/alacritty/alacritty.yml .
cp ~/.config/sxhkd/sxhkdrc .
cp ~/.config/bspwm/bspwmrc .
cp -r ~/.config/polybar .
cp ~/.config/Code\ -\ OSS/User/settings.json ./vscode/settings.json
cp ~/.config/Code\ -\ OSS/User/keybindings.json ./vscode/keybindings.json
cp ~/.config/rua/wrap_args.d/* ./rua/wrap_args.d/
