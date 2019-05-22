#!/bin/bash

echo "###############################################################################"
echo "System Configuration"
echo "###############################################################################"

echo ""
echo ""
defaults write /Library/Preferences/SystemConfiguration/com.apple.nat NAT -dict-add Enabled -bool false
