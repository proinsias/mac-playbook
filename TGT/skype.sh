#!/bin/bash

echo "###############################################################################"
echo "Skype"
echo "###############################################################################"

echo ""
echo "Include debug menu"
defaults write com.skype.skype.plist IncludeDebugMenu -bool true

echo ""
echo "Don't show welcome tour"
defaults write com.skype.skype.plist SKShowWelcomeTour -bool false

echo ""
echo "Disable welcome tour"
defaults write com.skype.skype.plist SKDisableWelcomeTour -bool true

echo ""
echo "Enable developer extras"
defaults write com.skype.skype.plist WebKitDeveloperExtras -bool true

echo ""
echo "Don't disable developer extras"
defaults write com.skype.skype.plist DisableWebKitDeveloperExtras -bool false
