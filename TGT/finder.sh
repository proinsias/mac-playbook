#!/bin/bash

echo "###############################################################################"
echo "Finder"
echo "###############################################################################"

echo ""
echo "Remove duplicates in the 'Open With' menu (also see 'lscleanup' alias)"
/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user

#echo ""
#echo "Disable the warning before emptying the Trash"
#defaults write com.apple.finder WarnOnEmptyTrash -bool false

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
#defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"
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

#echo ""
#echo "Remove Dropbox’s green checkmark icons in Finder"
#file=/Applications/Dropbox.app/Contents/Resources/emblem-dropbox-uptodate.icns
#[ -e "${file}" ] && mv -f "${file}" "${file}.bak"

#echo ""
#echo "Finder: hide files on desktop"
#defaults write com.apple.finder CreateDesktop -bool false

#Auto stop previews when scrolling:
#$ defaults write com.apple.finder AutoStopWhenScrollingOffBounds -boolean

#Auto stop previews when selection changes:
#$ defaults write com.apple.finder AutoStopWhenSelectionChanges -boolean

#Show version column in search results:
#$ defaults write com.apple.finder SearchViewSettings.ListViewSettings.columns.version.visible -boolean

#Show label column in search results:
#$ defaults write com.apple.finder SearchViewSettings.ListViewSettings.columns.label.visible -boolean

#Show comments column in search results:
#$ defaults write com.apple.finder SearchViewSettings.ListViewSettings.columns.comments.visible -boolean

#Show size column in search results:
#$ defaults write com.apple.finder SearchViewSettings.ListViewSettings.columns.size.visible -boolean
