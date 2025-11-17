#!/bin/bash

SELECTION=$(printf "1 - Capture window\n2 - Capture region\n3 - Record screen with audio\n4 - Record screen with no audio\n5 - Stop recording" | fuzzel --dmenu -l 5 -p "Screen capture select option: ")

case $SELECTION in
	*"Capture window")
		bash -c ~/.config/water-hyprland-global-scripts/screen-capture-scripts/screen-capture-window.sh;;
	*"Capture region")
		bash -c ~/.config/water-hyprland-global-scripts/screen-capture-scripts/screen-capture-region.sh;;
	*"Record screen with audio")
		bash -c ~/.config/water-hyprland-global-scripts/screen-capture-scripts/record-screen-default.sh;;
	*"Record screen with no audio")
		bash -c ~/.config/water-hyprland-global-scripts/screen-capture-scripts/record-screen-no-sound.sh;;
	*"Stop recording")
		bash -c ~/.config/water-hyprland-global-scripts/screen-capture-scripts/stop-record-screen.sh;;
esac
