#!/bin/bash

DIR="$HOME/Pictures/Screenshots"

setsid bash -c "
if [ -d \"$DIR\" ]; then
    hyprshot -m region --output-folder \"$DIR\"
else
    mkdir -p \"$DIR\"
    hyprshot -m region --output-folder \"$DIR\"
fi
" &
exit 0
