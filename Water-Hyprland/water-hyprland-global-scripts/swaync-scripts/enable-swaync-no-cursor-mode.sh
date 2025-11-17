#!/bin/bash
setsid sh -c '
  swaync-clients -df
  notify-send "Swaync no cursor is enabled!"
  sleep 1
  pkill swaync
  sleep 0.5
  swaync -s ~/.config/swaync-no-cursor/style.css \
         -c ~/.config/swaync-no-cursor/config.json &
  sleep 1
  swaync-client -df
' &
exit 0
