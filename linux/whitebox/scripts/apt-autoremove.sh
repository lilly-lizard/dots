#!/bin/bash

# repeat this until pacman -Qdtnq returns nothing
# this is better than $(pacman -Qmq | pacman -Rs -) because it keeps 'optionally' required packages
while
	pacman -Qdtnq | doas pacman -R -;
do :; done
