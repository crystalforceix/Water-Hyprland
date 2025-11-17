#!/bin/bash
setsid sh -c '
  sleep 0.5 &&
  pkill fuzzel || ~/.config/water-hyprland-global-scripts/fuzzel-scripts/fuzzel-utility.sh
' &
exit 0
