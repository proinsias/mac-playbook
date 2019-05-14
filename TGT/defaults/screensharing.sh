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

#Do Not Send Special Keys to Remote Machine
#$ defaults write com.apple.ScreenSharing DoNotSendSystemKeys -boolean

#Skip local address check:
#$ defaults write com.apple.ScreenSharing skipLocalAddressCheck -boolean

#Screen sharing image quality
#$ defaults write com.apple.ScreenSharing controlObserveQuality -integer

#Number of recent hosts on ScreenSharingMenulet:
#$ defaults write com.klieme.ScreenSharingMenulet maxHosts -integer

#Display IP-Addresses of the local hosts on ScreenSharingMenulet:
#$ defaults write com.klieme.ScreenSharingMenulet showIPAddresses -boolean
