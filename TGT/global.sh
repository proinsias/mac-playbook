#!/bin/bash

echo "###############################################################################"
echo "NSGlobalDomain and Apple Global Domain"
echo "###############################################################################"

echo ""
echo "Displaying ASCII control characters using caret notation in standard text views"
# Try e.g. `cd /tmp; unidecode "\x{0000}" > cc.txt; open -e cc.txt`
defaults write NSGlobalDomain NSTextShowsControlCharacters -bool true

echo ""
echo "Set sidebar icon size to 'medium'"
defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 2

echo ""
echo "Add a context menu item for showing the Web Inspector in web views"
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

