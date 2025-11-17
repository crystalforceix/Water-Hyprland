#!/bin/bash
setsid sh -c '
  swaync-client -df
  notify-send "Swaync cursor mode is enabled!"
  sleep 1
  pkill swaync
  sleep 0.5
  swaync & disown
  sleep 1
  swaync-client -df
' &
exit 0
