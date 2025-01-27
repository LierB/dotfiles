#!/bin/bash
#   _ _ _ _____ __ __ _____ _____ _____ 
#  | | | |  _  |  |  | __  |  _  | __  |
#  | | | |     |_   _| __ -|     |    -|
#  |_____|__|__| |_| |_____|__|__|__|__|  LAUNCH
#
#  by Bina

# terminate running instances
killall -q waybar

# wait until processes have been shut down
while pgrep -x waybar >/dev/null; do sleep 0.1; done

# launch main
waybar -c ~/.config/waybar/config & -s ~/.config/waybar/style.css

