#!/bin/zsh

if [ -n "$1" ]; then
    killall rofi;
    rofi -show ${1};
    exit;
fi

# builtin modes
echo window
echo drun
echo run
echo ssh
echo keys
echo filebrowser
echo recursivebrowser

# custom modes
for CUSTOM_MODE in ~/.config/rofi/scripts/*.sh; do
    echo $(basename $CUSTOM_MODE ".sh")
done
