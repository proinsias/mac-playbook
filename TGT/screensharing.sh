#!/bin/bash

echo "###############################################################################"
echo "ScreenSharing.app"
echo "###############################################################################"

echo ""
echo "Turn on Bonjour browser"
defaults write com.apple.ScreenSharing ShowBonjourBrowser_Debug 1

echo ""
echo "Show the full toolbar"
defaults write com.apple.ScreenSharing \
     'NSToolbar Configuration ControlToolbar' -dict-add \
     'TB Item Identifiers' \
     '(Scale,Control,Share,Curtain,Capture,FullScreen,GetClipboard,SendClipboard,Quality)'
