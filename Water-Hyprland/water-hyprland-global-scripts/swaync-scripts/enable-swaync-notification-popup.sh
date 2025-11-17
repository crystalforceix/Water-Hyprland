#!/bin/bash
setsid sh -c '
  swaync-client -df
  sleep 0.5 &&
  notify-send "Enabled notification popup!"
  sleep 1
  swaync-client -C &&
  swaync-client -df
' &
exit 0
