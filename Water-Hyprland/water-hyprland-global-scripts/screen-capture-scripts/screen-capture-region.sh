#!/bin/bash

DIR="$HOME/Pictures/Screenshots"

setsid bash -c "
if [ -d \"$DIR\" ]; then
    cd /tmp/
    hyprshot -m region --output-folder \"$DIR\"
else
    cd /tmp/
    mkdir -p \"$DIR\"
    hyprshot -m region --output-folder \"$DIR\"
fi
" &
exit 0
