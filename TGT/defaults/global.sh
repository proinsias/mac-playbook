#!/bin/bash

echo "###############################################################################"
echo "NSGlobalDomain and Apple Global Domain"
echo "###############################################################################"

#echo ""
#echo "Menu bar: disable transparency"
#defaults write NSGlobalDomain AppleEnableMenuBarTransparency -bool false

#echo ""
#echo "Set highlight color to a specific yellow"
#defaults write NSGlobalDomain AppleHighlightColor -string '0.984300 0.929400 0.450900'

# Disable smooth scrolling
# (Uncomment if you’re on an older Mac that messes up the animation)
#defaults write NSGlobalDomain NSScrollAnimationEnabled -bool false

echo ""
echo "Always show scrollbars"
defaults write NSGlobalDomain AppleShowScrollBars -string "Always"

echo ""
echo "Disable opening and closing window animations"
defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false

echo ""
echo "Increasing the window resize speed for Cocoa applications"
defaults write NSGlobalDomain NSWindowResizeTime -float 0.001

echo ""
echo "Expanding the save panel by default"
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

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
echo "Saving to disk (not to iCloud) by default"
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

echo ""
echo "Set sidebar icon size to 'medium'"
defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 2

echo ""
echo "Disable smart quotes and smart dashes as they're annoying when typing code"
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

echo ""
echo "Enable spring loading for directories"
defaults write NSGlobalDomain com.apple.springing.enabled -bool true

#echo ""
#echo "Remove the spring loading delay for directories"
#defaults write NSGlobalDomain com.apple.springing.delay -float 0

#echo ""
#echo "Disabling auto-correct"
#defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

#echo ""
#echo "Hide the menu bar"
#defaults write "Apple Global Domain" "_HIHideMenuBar" 1cho ""

#Restore the the 'Save As' menu item (Equivalent to adding a Keyboard
#                     shortcut in the System
#                     Preferences.app )
#$ defaults write -g NSUserKeyEquivalents -dict-add 'Save As...' '@$S'

#Enable continuous spell checking everywhere
#$ defaults write -g WebContinuousSpellCheckingEnabled -boolean

#Enable automatic dash replacement everywhere
#$ defaults write -g WebAutomaticDashSubstitutionEnabled -boolean

#Enable automatic text replacement everywhere
#$ defaults write -g WebAutomaticTextReplacementEnabled -boolean

#Icon Size for Open Panels
#$ defaults write -g NSNavPanelIconViewIconSizeForOpenMode -number

#Keyboard press and hold behavior
#$ defaults write -g ApplePressAndHoldEnabled -boolean

echo ""
echo "Add a context menu item for showing the Web Inspector in web views"
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

echo ""
echo "Enable subpixel font rendering on non-Apple LCDs"
defaults write NSGlobalDomain AppleFontSmoothing -int 2
