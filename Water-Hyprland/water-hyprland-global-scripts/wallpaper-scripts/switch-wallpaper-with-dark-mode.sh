#!/bin/bash

# Check zenity package
if ! command -v zenity >/dev/null 2>&1; then
    notify-send "Not found zenity app and command..."
    exit 1
fi

# Check matugen package
if ! command -v matugen >/dev/null 2>&1; then
    zenity --error --text="Not found matugen app and command..."
    exit 1
fi

# Open app for select wallpaper
FILE=$(zenity --file-selection \
    --title="Choose your wallpaper" \
    --file-filter="ALL | *")

if [ $? -ne 0 ]; then
    exit 0
fi


THEME_NAME="wallpaper_theme"

matugen image "$FILE"

if [ $? -ne 0 ]; then
    zenity --error --text="Failed while execute matugen!"
    exit 1
fi

notify-send "Wallpaper's selected!"
exit 0
