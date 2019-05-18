#!/bin/bash

echo "###############################################################################"
echo "Address Book"
echo "###############################################################################"

echo ""
echo "Enable the WebKit Developer Tools in the Mac App Store"
defaults write com.apple.appstore WebKitDeveloperExtras -bool true

echo ""
echo "Enable Debug Menu in the Mac App Store"
defaults write com.apple.appstore ShowDebugMenu -bool true

echo ""
echo "Turn on app auto-update"
defaults write com.apple.commerce AutoUpdate -bool true

echo ""
echo "Allow the App Store to reboot machine on macOS updates"
defaults write com.apple.commerce AutoUpdateRestartRequired -bool true
