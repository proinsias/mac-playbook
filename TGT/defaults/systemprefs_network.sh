#!/bin/bash

echo "###############################################################################"
echo "System Preferences/Network"
echo "###############################################################################"

echo ""
echo "Enable AirDrop over Ethernet and on Unsupported Macs"
defaults write com.apple.NetworkBrowser BrowseAllInterfaces -bool true

echo ""
echo "VPN status - Show Time Connected"
defaults write com.apple.networkConnect VPNShowTime -int 1
