#!/usr/bin/env bash

xmodmap -e 'clear Lock'
xmodmap -e 'keycode 0x42=Escape' 
setxkbmap -option caps:escape &

exec bspwm 
