#!/bin/bash

DIR="$HOME/Videos/ScreenCaptures/With-sound"

setsid bash -c '
if [ -d \"$DIR\" ]; then
    cd /tmp/
    notify-send "Recording screen with sound mode"
    sleep 0.5
    gpu-screen-recorder -w screen -a default_output -o "$HOME/Videos/ScreenCaptures/With-sound/recording_$(date +%Y%m%d_%H%M%S).mp4" -c mp4
else
    cd /tmp/
    mkdir -p \"$DIR\"
    sleep 0.5
    notify-send "Recording screen with sound mode!"
    sleep 0.5
    gpu-screen-recorder -w screen -a default_output -o "$HOME/Videos/ScreenCaptures/With-sound/recording_$(date +%Y%m%d_%H%M%S).mp4" -c mp4
fi
' &
exit 0
