#!/bin/bash

echo "###############################################################################"
echo "App Store"
echo "###############################################################################"

echo ""
echo "Enable the WebKit Developer Tools in the Mac App Store"
defaults write com.apple.appstore WebKitDeveloperExtras -bool true

echo ""
echo "Enable Debug Menu in the Mac App Store"
defaults write com.apple.appstore ShowDebugMenu -bool true
