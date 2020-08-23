#!/bin/sh

setxkbmap pt &
setxkbmap -option caps:escape &

xcompmgr &
$HOME/.config/polybar/launch.sh > /dev/null &
nm-applet &

nitrogen --restore &
xrandr --output DP-0 --mode 1920x1080 --rate 165 &
nvidia-settings& disown && sleep 1 && killall nvidia-settings
