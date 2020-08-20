#!/bin/zsh

layout=$(setxkbmap -query |grep -e layout: |cut -c 13-14)

if [[ $layout == "us" ]]; then

setxkbmap dk
notify-send "Language" "Danish"

elif [[ $layout == "dk" ]]; then

notify-send "Language" "English"
setxkbmap us

fi
