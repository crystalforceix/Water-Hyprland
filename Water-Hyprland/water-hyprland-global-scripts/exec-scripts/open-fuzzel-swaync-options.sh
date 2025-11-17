#!/bin/bash
setsid sh -c '
  pkill fuzzel || ~/.config/water-hyprland-global-scripts/fuzzel-scripts/fuzzel-swaync-options.sh
' &
exit 0
