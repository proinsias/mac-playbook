#!/bin/bash

echo "###############################################################################"
echo "Menu Extras"
echo "###############################################################################"

echo ""
echo "Use 24-hour format"
defaults write com.apple.menuextra.clock DateFormat "EEE HH:mm"
#defaults write com.apple.menuextra.clock DateFormat "EEE MMM d  h:mm a"

echo ""
echo "Show battery percentage"
defaults write com.apple.menuextra.battery ShowPercent -string "YES"
