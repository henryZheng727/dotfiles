#!/bin/bash

if [ -n "$1" ]; then
    killall rofi;
    rofi -show ${1};
    exit;
fi

BUILTIN=(window drun run ssh keys filebrowser recursivebrowser)
for MODE in BUILTIN; do
    echo $MODE
done

for CUSTOM_MODE in $XDG_CONFIG_HOME/rofi/scripts/*; do
    echo $(basename $CUSTOM_MODE .sh)
done
