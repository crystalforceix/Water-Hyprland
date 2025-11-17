#!/bin/bash
setsid sh -c '
  pkill fuzzel || ~/.config/water-hyprland-global-scripts/fuzzel-scripts/fuzzel-screen-capture.sh
' &
exit 0
