#!/bin/bash
setsid sh -c '
  pkill fuzzel || ~/.config/water-hyprland-global-scripts/fuzzel-scripts/fuzzel-utility.sh
' &
exit 0
