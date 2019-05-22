#!/bin/bash

echo "###############################################################################"
echo "Finder"
echo "###############################################################################"

echo ""
echo "Remove duplicates in the 'Open With' menu (also see 'lscleanup' alias)"
/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user

echo ""
echo "Set Desktop as the default location for new Finder windows"
# For other paths, use `PfLo` and `file:///full/path/here/`
defaults write com.apple.finder NewWindowTarget -string "PfDe"
defaults write com.apple.finder NewWindowTargetPath -string
"file://${HOME}/Desktop/"

echo ""
echo "Showing all filename extensions in Finder by default"
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

echo ""
echo "Allowing text selection in Quick Look/Preview in Finder by
default"
defaults write com.apple.finder QLEnableTextSelection -bool true

echo ""
echo "Disable Quick Look animations"
defaults write -g QLPanelAnimationDuration -float 0

echo ""
#echo "When performing a search, search the current folder by default"
# "SCcf"
echo "When performing a search, search This Mac by default"
defaults write com.apple.finder FXDefaultSearchScope -string "SCev"

echo ""
echo "Automatically open a new Finder window when a volume is mounted"
defaults write com.apple.frameworks.diskimages auto-open-ro-root -bool true
defaults write com.apple.frameworks.diskimages auto-open-rw-root -bool true
defaults write com.apple.finder OpenWindowForNewRemovableDisk -bool true

echo ""
echo "Show item info to the right of the icons on the desktop"
/usr/libexec/PlistBuddy -c \
"Set DesktopViewSettings:IconViewSettings:labelOnBottom false" \
~/Library/Preferences/com.apple.finder.plist
