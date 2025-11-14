#!/bin/bash

status=$(playerctl status 2>/dev/null)

if [ "$status" == "Playing" ]; then
    artist=$(playerctl metadata artist)
    title=$(playerctl metadata title)
    echo "$artist - $title - Playing"
elif [ "$status" == "Paused" ]; then
    artist=$(playerctl metadata artist)
    title=$(playerctl metadata title)
    echo "$artist - $title - Paused"
else
    echo "Nothing Playing"
fi

