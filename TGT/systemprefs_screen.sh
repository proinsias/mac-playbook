#!/bin/bash

echo "###############################################################################"
echo "System Preferences/Screen"
echo "###############################################################################"

echo ""
echo "Show screensaver with clock"
defaults -currentHost write com.apple.screensaver showClock 1

echo ""
echo "Save screenshots to the desktop"
defaults write com.apple.screencapture location -string "${HOME}/Desktop"

echo ""
echo "Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)"
defaults write com.apple.screencapture type -string "png"
