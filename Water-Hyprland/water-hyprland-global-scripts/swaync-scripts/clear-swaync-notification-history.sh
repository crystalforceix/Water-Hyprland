#!/bin/bash
setsid sh -c '
  swaync-client -df
  sleep 0.5 &&
  notify-send "Cleared notification history!"
  sleep 1
  swaync-client -C &&
  swaync-client -df
' &
exit 0
