#!/bin/sh

cp -r ~/.config/alacritty/ .
cp -r ~/.config/fontconfig/ .
cp -r ~/.config/bspwm/ .
cp ~/.xinitrc bspwm/
cp ~/.config/sxhkd/sxhkdrc bspwm/
cp -r ~/.config/polybar/ bspwm/
cp ~/.config/gitignore_global .
cp -r ~/.config/lf/ .
cp -r ~/.config/ncmpcpp/config .
cp ~/.config/nvim/init.vim nvim/
cp -r ~/.config/river/ .

cp ~/Documents/bin/apt-autoremove.sh scripts/
cp ~/Documents/bin/disable-auto-mute-root.sh scripts/
cp ~/Documents/bin/disable-auto-mute-user.sh scripts/
cp ~/Documents/bin/extract-music.sh scripts/
cp ~/Documents/bin/fix-zsh-histfile.sh scripts/
cp ~/Documents/bin/launch-plasma.sh scripts/
cp ~/Documents/bin/launch-river.sh scripts/
cp ~/Documents/bin/screenshot.sh scripts/
cp ~/Documents/bin/set-theme scripts/
cp ~/Documents/bin/wl-reset-monitors.sh scripts/
cp /usr/share/zsh/site-functions/_set-theme scripts/

cp ~/.config/vim/.vimrc vim/
cp ~/.config/Code\ -\ OSS/User/settings.json vscode/
cp ~/.config/Code\ -\ OSS/User/keybindings.json vscode/
cp -r ~/.config/waybar .
cp ~/.config/zsh/.zprofile zsh/
cp ~/.config/zsh/.zshenv zsh/
cp ~/.config/zsh/.zshrc zsh/

