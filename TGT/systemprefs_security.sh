#!/bin/bash

echo "###############################################################################"
echo "System Preferences/Security & Privacy"
echo "###############################################################################"

echo ""
echo "Turn on Firewall"
defaults write /Library/Preferences/com.apple.alf globalstate -bool true
defaults -currentHost write ~/Library/Preferences/com.apple.alf globalstate -bool true
# /usr/libexec/ApplicationFirewall/socketfilterfw --setglobalstate on

echo "Want to enable FileVault?"
select yn in "Yes" "No"; do
  case $yn in
    Yes ) fdesetup enable
      break;;
    No ) exit;;
  esac
done

echo ""
echo "Enable stealth mode"
defaults write /Library/Preferences/com.apple.alf stealthenabled -bool true
defaults write ~/Library/Preferences/com.apple.alf stealthenabled -bool true

echo ""
echo "Allow signed applications to receive incoming connections"
defaults write /Library/Preferences/com.apple.alf allowsignedenabled 1
