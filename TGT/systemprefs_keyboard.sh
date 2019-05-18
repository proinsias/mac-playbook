#!/bin/bash

echo "###############################################################################"
echo "System Preferences/Keyboard"
echo "###############################################################################"

echo "Disable keyboard from automatically adjusting backlight brightness in low light"
defaults write \
     /Library/Preferences/com.apple.iokit.AmbientLightSensor \
     "Automatic Keyboard Enabled" -bool false
