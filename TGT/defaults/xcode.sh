#!/bin/bash

echo "###############################################################################"
echo "Xcode"
echo "###############################################################################"


echo ""
echo "Turn off welcome windows"
defaults write com.apple.dt.Xcode.plist XCShowWelcomeWindow -bool false
