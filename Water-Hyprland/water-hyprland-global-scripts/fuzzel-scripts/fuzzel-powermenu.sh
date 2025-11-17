#!/bin/bash

SELECTION="$(printf "1 - Lock\n2 - Suspend\n3 - Suspend then lock\n4 - Log out\n5 - Shutdown\n6 - Reboot\n7 - Reboot to UEFI\n8 - Hard reboot" | fuzzel --dmenu -l 8 -p "Power Menu: ")"

case $SELECTION in
	*"Lock")
		hyprlock;;
	*"Suspend")
		systemctl suspend;;
	*"Suspend then lock")
		sleep 1 && systemctl suspend && hyprlock;;
	*"Log out")
		sleep 0.5 && hyprctl dispatch exit;;
	*"Shutdown")
	  systemctl poweroff;;
	*"Reboot")
		systemctl reboot;;
	*"Reboot to UEFI")
		systemctl reboot --firmware-setup;;
	*"Hard reboot")
		pkexec "echo b > /proc/sysrq-trigger";;
esac
