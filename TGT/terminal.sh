#!/bin/bash

echo "###############################################################################"
echo "Terminal"
echo "###############################################################################"

echo ""
echo "Enabling UTF-8 ONLY in Terminal.app and setting the Pro theme (with size 18) by default"
defaults write com.apple.Terminal StringEncodings -array 4
defaults write com.apple.Terminal "Default Window Settings" -string "Pro"
defaults write com.apple.Terminal "Startup Window Settings" -string "Pro"
defaults write com.apple.Terminal "NSWindow Frame NSFontPanel" "929 42 445 105 0 0 1440 900"
