#!/bin/sh

cp ~/.config/gitignore_global .

cp ~/.config/vim/.vimrc vim/
cp ~/.config/nvim/init.vim nvim/

cp ~/.config/zsh/.zshrc zsh/
cp ~/.config/zsh/.zshenv zsh/
cp ~/.config/zsh/.zprofile zsh/
cp ~/.config/alacritty/alacritty.yml alacritty/

cp ~/.xinitrc bspwm/
cp ~/.config/sxhkd/sxhkdrc bspwm/
cp ~/.config/bspwm/bspwmrc bspwm/
cp -r ~/.config/polybar bspwm/

cp ~/.config/Code\ -\ OSS/User/settings.json vscode/
cp ~/.config/Code\ -\ OSS/User/keybindings.json vscode/

cp -r ~/.config/rua/wrap_args.d rua/

cp ~/Documents/bin/set-theme scripts/
