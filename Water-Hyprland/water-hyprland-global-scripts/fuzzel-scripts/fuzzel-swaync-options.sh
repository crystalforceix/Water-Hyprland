#!/bin/bash

SELECTION="$(printf "1 - Switch to swaync no cursor mode\n2 - Switch to swaync cursor mode\n3 - Log out\n4 - Reboot\n5 - Reboot to UEFI\n6 - Hard reboot\n7 - Shutdown" | fuzzel --dmenu -l 7 -p "Swaync option: ")"

case $SELECTION in
	*"Switch to swaync no cursor mode")
		bash -c ~/Water-Hyprland/Water-Hyprland/water-hyprland-global-scripts/exec-scripts/swaync-scripts/enable-swaync-no-cursor-mode.sh;;
	*"Switch to swaync cursor mode")
		bash -c ~/Water-Hyprland/Water-Hyprland/water-hyprland-global-scripts/exec-scripts/swaync-scripts/enable-swaync-cursor-mode.sh;;
	*"Log out")
		swaymsg exit;;
	*"Reboot")
		systemctl reboot;;
	*"Reboot to UEFI")
		systemctl reboot --firmware-setup;;
	*"Hard reboot")
		pkexec "echo b > /proc/sysrq-trigger";;
	*"Shutdown")
		systemctl poweroff;;
esac
