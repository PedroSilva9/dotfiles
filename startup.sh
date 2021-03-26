#!/bin/sh

while [ $(xkblayout-state print "%s") != "pt" ]
do
    setxkbmap -layout pt -option caps:escape &
done

xcompmgr &
#$HOME/.config/polybar/launch.sh > /dev/null &
nm-applet &

nitrogen --restore &

if [ $(uname -n) = "universe" ]; then
    xrandr --output DP-0 --mode 1920x1080 --rate 165 &
    timeout -k 2 2 nvidia-settings &
    $HOME/dotfiles/mouse.sh &
else
    $HOME/dotfiles/touchpad.sh &
fi

