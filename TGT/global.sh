#!/bin/bash

echo "###############################################################################"
echo "NSGlobalDomain and Apple Global Domain"
echo "###############################################################################"

#echo ""
#echo "Set highlight color to a specific yellow"
#defaults write NSGlobalDomain AppleHighlightColor -string '0.984300 0.929400 0.450900'

echo ""
echo "Displaying ASCII control characters using caret notation in standard text views"
# Try e.g. `cd /tmp; unidecode "\x{0000}" > cc.txt; open -e cc.txt`
defaults write NSGlobalDomain NSTextShowsControlCharacters -bool true

#echo ""
#echo "Disabling system-wide resume"
#defaults write NSGlobalDomain NSQuitAlwaysKeepsWindows -bool false

#echo ""
#echo "Disabling automatic termination of inactive apps"
#defaults write NSGlobalDomain NSDisableAutomaticTermination -bool true

echo ""
echo "Set sidebar icon size to 'medium'"
defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 2

#echo ""
#echo "Hide the menu bar"
#defaults write "Apple Global Domain" "_HIHideMenuBar" 1cho ""

#Restore the the 'Save As' menu item (Equivalent to adding a Keyboard
#                     shortcut in the System
#                     Preferences.app )
#$ defaults write -g NSUserKeyEquivalents -dict-add 'Save As...' '@$S'

#Enable automatic dash replacement everywhere
#$ defaults write -g WebAutomaticDashSubstitutionEnabled -boolean

#Enable automatic text replacement everywhere
#$ defaults write -g WebAutomaticTextReplacementEnabled -boolean

#Icon Size for Open Panels
#$ defaults write -g NSNavPanelIconViewIconSizeForOpenMode -number

echo ""
echo "Add a context menu item for showing the Web Inspector in web views"
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

