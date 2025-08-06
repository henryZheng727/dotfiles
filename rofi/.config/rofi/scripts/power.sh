#!/bin/zsh

# This script allows you to shut down, reboot, or log out.

case "$@" in
    "Power Off")
        shutdown now
        ;;
    "Reboot")
        reboot
        ;;
    "Log Out")
        swaymsg exit
        # swaynag -t warning -m 'You pressed the exit shortcut. Do you really want to exit sway? This will end your Wayland session.' -B 'Yes, exit sway' 'swaymsg exit'
        ;;
    "Lock Screen")
        swaylock -f;
        exit;
        ;;
    "Cancel")
        exit
        ;;
esac

echo "Power Off"
echo "Reboot"
echo "Log Out"
echo "Lock Screen"
echo "Cancel"
