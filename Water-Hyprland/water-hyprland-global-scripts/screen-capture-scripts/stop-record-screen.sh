#!/bin/bash

DIR="$HOME/Videos/ScreenCaptures"

setsid bash -c '
if [ -d \"$DIR\" ]; then
    cd /tmp/
    notify-send "Stopped screen record!"
    sleep 0.5
    pkill -SIGINT -f gpu-screen-recorder
else
    cd /tmp/
    mkdir -p \"$DIR\"
    sleep 0.5
    notify-send "Stopped screen record!"
    sleep 0.5
    pkill -SIGINT -f gpu-screen-recorder
fi
' &
exit 0
