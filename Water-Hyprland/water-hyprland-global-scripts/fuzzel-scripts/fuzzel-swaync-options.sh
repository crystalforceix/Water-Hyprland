#!/bin/bash

SELECTION=$(printf "1 - Switch to swaync no cursor mode\n2 - Switch to swaync cursor mode\n3 - Clear notification history\n4 - Enable notification popup\n5 - Disable notification popup" | fuzzel --dmenu -l 5 -p "Swaync option select: ")

case $SELECTION in
	*"Switch to swaync no cursor mode")
		bash -c ~/Water-Hyprland/Water-Hyprland/water-hyprland-global-scripts/swaync-scripts/enable-swaync-no-cursor-mode.sh;;
	*"Switch to swaync cursor mode")
		bash -c ~/Water-Hyprland/Water-Hyprland/water-hyprland-global-scripts/swaync-scripts/enable-swaync-cursor-mode.sh;;
	*"Clear notification history")
		bash -c ~/Water-Hyprland/Water-Hyprland/water-hyprland-global-scripts/swaync-scripts/clear-swaync-notification-history.sh;;
	*"Enable notification popup")
		bash -c ~/Water-Hyprland/Water-Hyprland/water-hyprland-global-scripts/swaync-scripts/enable-swaync-notification-popup.sh;;
	*"Disable notification popup")
		bash -c ~/Water-Hyprland/Water-Hyprland/water-hyprland-global-scripts/swaync-scripts/disable-swaync-notification-popup.sh;;
esac
