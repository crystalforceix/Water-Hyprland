#!/bin/bash

SELECTION="$(printf "1 - Global reload\n2 - Toggle night shift for eyes\n3 - Change wallpaper with dark mode\n4 - Change wallpaper with light mode\n5 - Screen capture\n6 - Powermenu\n7 - Swaync options\n8 - WIP" | fuzzel --dmenu -l 8 -p "Utility selection: ")"

case $SELECTION in
	*"Global reload")
		bash -c ~/Water-Hyprland/Water-Hyprland/water-hyprland-global-scripts/reload-scripts/global-reload.sh;;
	*"Toggle night shift for eyes")
		bash -c ~/Water-Hyprland/Water-Hyprland/water-hyprland-global-scripts/wlsunset-scripts/toggle_wlsunset.sh;;
	*"Change wallpaper with dark mode")
		bash -c ~/Water-Hyprland/Water-Hyprland/water-hyprland-global-scripts/wallpaper-scripts/switch-wallpaper-with-dark-mode.sh;;
	*"Change wallpaper with light mode")
		bash -c ~/Water-Hyprland/Water-Hyprland/water-hyprland-global-scripts/wallpaper-scripts/switch-wallpaper-with-light-mode.sh;;
	*"Screen capture")
	  systemctl poweroff;;
	*"Powermenu")
		bash -c ~/Water-Hyprland/Water-Hyprland/water-hyprland-global-scripts/exec-scripts/open-fuzzel-powermenu.sh;;
	*"Swaync options")
		bash -c ~/Water-Hyprland/Water-Hyprland/water-hyprland-global-scripts/exec-scripts/open-fuzzel-swaync-options.sh;;
	*"WIP")
		echo "hello world";;
esac
