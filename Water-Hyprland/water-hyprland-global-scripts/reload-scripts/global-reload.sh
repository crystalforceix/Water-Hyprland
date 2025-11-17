#!/bin/bash
setsid sh -c '
  hyprctl reload &&
  pkill swaync &&
  swaync & disown
  sleep 0.5
  swaync-client -rs &&
  pkill waybar &&
  waybar & disown
  sleep 1
  notify-send "Global reloaded!"
' &
exit 0
