#!/bin/bash

SELECTION=$(printf "1 - Capture window\n2 - Capture region\n3 - Clear notification history\n4 - Enable notification popup\n5 - Disable notification popup" | fuzzel --dmenu -l 5 -p "Swaync option select: ")

case $SELECTION in
	*"Capture window")
		hyprshot -m window;;
	*"Capture region")
		hyprshot -m region;;
	*"Clear notification history")
		bash -c ~/Water-Hyprland/Water-Hyprland/water-hyprland-global-scripts/swaync-scripts/clear-swaync-notification-history.sh;;
	*"Enable notification popup")
		bash -c ~/Water-Hyprland/Water-Hyprland/water-hyprland-global-scripts/swaync-scripts/enable-swaync-notification-popup.sh;;
	*"Disable notification popup")
		bash -c ~/Water-Hyprland/Water-Hyprland/water-hyprland-global-scripts/swaync-scripts/disable-swaync-notification-popup.sh;;
esac
