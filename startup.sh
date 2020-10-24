#!/bin/sh

setxkbmap -layout pt &
setxkbmap -option caps:escape &

xcompmgr &
$HOME/.config/polybar/launchb > /dev/null &
nm-applet &

nitrogen --restore &
