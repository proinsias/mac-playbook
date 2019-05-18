#!/bin/bash

echo "###############################################################################"
echo "System Preferences/Bluetooth"
echo "###############################################################################"

echo ""
echo "Increase sound quality for Bluetooth headphones/headsets"
defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" -int 40

echo ""
echo "Show Bluetooth in menu bar"
/usr/libexec/PlistBuddy -c \
            "Add :menuExtras string '/System/Library/CoreServices/Menu Extras/Bluetooth.menu'" \
            com.apple.systemuiserver.plist > /dev/null 2>&1
