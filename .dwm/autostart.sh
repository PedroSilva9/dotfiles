#!/bin/sh
setxkbmap -option caps:escape -layout pt &
$HOME/dotfiles/startup.sh &
$HOME/.config/dwm-6.2/dwm-iconbar &
