#!/bin/bash

setsid bash -c "

# Check zenity package
if ! command -v zenity >/dev/null 2>&1; then
    notify-send 'Not found zenity app and command...'
    exit 1
fi

# Check matugen package
if ! command -v matugen >/dev/null 2>&1; then
    zenity --error --text='Not found matugen app and command...'
    exit 1
fi

# Open app for select wallpaper
FILE=\$(zenity --file-selection \
    --title='Choose your wallpaper' \
    --file-filter='All | *')

if [ \$? -ne 0 ] || [ -z \"\$FILE\" ]; then
    exit 0
fi

THEME_NAME='wallpaper_theme'

# Run matugen in dark mode
matugen image \"\$FILE\" -m light

if [ \$? -ne 0 ]; then
    zenity --error --text='Failed while executing matugen!'
    exit 1
fi

notify-send 'Wallpaper and theme changed!'
exit 0

" &
exit 0
