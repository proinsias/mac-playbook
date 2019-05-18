#!/bin/bash

echo "###############################################################################"
echo "Caffeine"
echo "###############################################################################"

echo ""
echo "Activate on launch"
defaults write com.lightheadsw.caffeine.plist ActivateOnLaunch -bool false
echo ""
echo "Suppress launch message"
defaults write com.lightheadsw.caffeine.plist SuppressLaunchMessage -bool true
echo ""
echo "Set duration to infinity"
defaults write com.lightheadsw.caffeine.plist DefaultDuration -string "0"
