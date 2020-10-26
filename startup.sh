#!/bin/sh

setxkbmap -layout pt &
setxkbmap -option caps:escape &

xcompmgr &
$HOME/.config/polybar/launch.sh > /dev/null &
nm-applet &

nitrogen --restore &

if [ $(hostname -s) = "universe" ]; then
    xrandr --output DP-0 --mode 1920x1080 --rate 165 &
    timeout -k 10 10 nvidia-settings &
fi

