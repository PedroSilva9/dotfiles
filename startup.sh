#!/bin/sh

xcompmgr &
nm-applet &
nitrogen --restore &
dunst &

if [ $(uname -n) = "universe" ]; then
    xrandr --output DP-0 --mode 1920x1080 --rate 165 &
    timeout -k 2 2 nvidia-settings &
    $HOME/dotfiles/mouse.sh &
else
    $HOME/dotfiles/touchpad.sh &
fi

