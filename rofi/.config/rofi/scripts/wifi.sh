#!/bin/bash

# This script allows you to select wifi networks using rofi.

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
    "Cancel")
        exit
        ;;
esac

nmcli device wifi list
