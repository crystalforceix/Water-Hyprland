#!/bin/bash
setsid sh -c '
  pkill fuzzel || ~/.config/water-hyprland-global-scripts/fuzzel-scripts/fuzzel-powermenu.sh
' &
exit 0
