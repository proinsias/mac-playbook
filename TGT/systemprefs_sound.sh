#!/bin/bash

echo "###############################################################################"
echo "System Preferences/App Sound"
echo "###############################################################################"

echo ""
echo "Disable UI sounds"
defaults write com.apple.systemsound com.apple.sound.uiaudio.enabled\
     -int 0

echo ""
echo "Disable beeps on sound level change"
defaults write -g com.apple.sound.beep.feedback -int 0

echo ""
echo "Mute Audio Output"
osascript -e 'set volume output muted true'
