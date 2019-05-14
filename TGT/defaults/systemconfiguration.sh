#!/bin/bash

echo "###############################################################################"
echo "System Configuration"
echo "###############################################################################"

echo ""
echo ""
defaults -currentHost write /Library/Preferences/SystemConfiguration/com.apple.captive.control Active -bool false

echo ""
echo ""
defaults -currentHost write /Library/Preferences/SystemConfiguration/com.apple.finder AppleShowAllFiles -bool true

echo ""
echo ""
defaults write /Library/Preferences/SystemConfiguration/com.apple.nat NAT -dict-add Enabled -bool false
