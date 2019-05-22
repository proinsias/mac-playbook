#!/bin/bash

echo "###############################################################################"
echo "System Preferences/Bluetooth"
echo "###############################################################################"

echo ""
echo "Show Bluetooth in menu bar"
/usr/libexec/PlistBuddy -c \
            "Add :menuExtras string '/System/Library/CoreServices/Menu Extras/Bluetooth.menu'" \
            com.apple.systemuiserver.plist > /dev/null 2>&1
