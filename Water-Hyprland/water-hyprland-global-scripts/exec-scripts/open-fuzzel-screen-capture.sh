#!/bin/bash
setsid sh -c '
  sleep 0.5 &&
  pkill fuzzel || ~/Water-Hyprland/Water-Hyprland/water-hyprland-global-scripts/fuzzel-scripts/fuzzel-screen-capture.sh
' &
exit 0
