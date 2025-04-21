#/usr/bin/env zsh

# repeat this until pacman -Qdtnq returns nothing
# this is better than $(pacman -Qmq | pacman -Rs -) because it keeps 'optionally' required packages
pacman -Qdtnq | doas pacman -R -
