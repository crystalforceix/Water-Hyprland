#!/bin/bash
setsid sh -c '
  sleep 0.5 &&
  pkill fuzzel || ~/.config/water-hyprland-global-scripts/fuzzel-scripts/fuzzel-powermenu.sh
' &
exit 0
