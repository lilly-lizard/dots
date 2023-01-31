#!/usr/bin/bash

swww query || swww init
swww img $1 --transition-fps 60 --transition-type grow --transition-pos 0.854,0.12 --transition-duration 2
