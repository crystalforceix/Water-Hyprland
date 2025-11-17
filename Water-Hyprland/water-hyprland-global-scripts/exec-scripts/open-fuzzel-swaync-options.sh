#!/bin/bash
setsid sh -c '
  sleep 0.5 &&
  pkill fuzzel || ~/.config/water-hyprland-global-scripts/fuzzel-scripts/fuzzel-swaync-options.sh
' &
exit 0
