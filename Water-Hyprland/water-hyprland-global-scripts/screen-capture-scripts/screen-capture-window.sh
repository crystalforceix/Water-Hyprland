#!/bin/bash

DIR="$HOME/Pictures/Screenshots"

setsid bash -c "
if [ -d \"$DIR\" ]; then
    hyprshot -m window --output-folder \"$DIR\"
else
    mkdir -p \"$DIR\"
    hyprshot -m window --output-folder \"$DIR\"
fi
" &
exit 0
