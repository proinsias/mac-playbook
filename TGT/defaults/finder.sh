#!/bin/bash

echo "###############################################################################"
echo "Finder"
echo "###############################################################################"

echo ""
echo "Remove duplicates in the 'Open With' menu (also see 'lscleanup' alias)"
/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user

echo ""
echo "Finder: allow quitting via ⌘ + Q; doing so will also hide
desktop icons"
defaults write com.apple.finder QuitMenuItem -bool true

#echo ""
#echo "Disable the warning before emptying the Trash"
#defaults write com.apple.finder WarnOnEmptyTrash -bool false

echo ""
echo "Finder: disable window animations and Get Info animations"
defaults write com.apple.finder DisableAllAnimations -bool true

echo ""
echo "Set Desktop as the default location for new Finder windows"
# For other paths, use `PfLo` and `file:///full/path/here/`
defaults write com.apple.finder NewWindowTarget -string "PfDe"
defaults write com.apple.finder NewWindowTargetPath -string
"file://${HOME}/Desktop/"

echo ""
echo "Showing icons for hard drives, servers, and removable media on
the desktop"
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowMountedServersOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

echo ""
echo "Show hidden files in Finder by default"
defaults write com.apple.Finder AppleShowAllFiles -bool true

echo ""
echo "Showing all filename extensions in Finder by default"
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

echo ""
echo "Showing status bar in Finder by default"
defaults write com.apple.finder ShowStatusBar -bool true

echo ""
echo "Finder: show path bar"
defaults write com.apple.finder ShowPathbar -bool true

echo ""
echo "Allowing text selection in Quick Look/Preview in Finder by
default"
defaults write com.apple.finder QLEnableTextSelection -bool true

echo ""
echo "Disable Quick Look animations"
defaults write -g QLPanelAnimationDuration -float 0

echo ""
echo "Displaying full POSIX path as Finder window title"
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

echo ""
#echo "When performing a search, search the current folder by default"
#defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"
echo "When performing a search, search This Mac by default"
defaults write com.apple.finder FXDefaultSearchScope -string "SCev"

echo ""
echo "Enable spring loading for directories"
defaults write NSGlobalDomain com.apple.springing.enabled -bool true

echo ""
echo "Remove the spring loading delay for directories"
defaults write NSGlobalDomain com.apple.springing.delay -float 0

echo ""
echo "Disable disk image verification"
defaults write com.apple.frameworks.diskimages skip-verify -bool true
defaults write com.apple.frameworks.diskimages skip-verify-locked -bool true
defaults write com.apple.frameworks.diskimages skip-verify-remote -bool true

echo ""
echo "Automatically open a new Finder window when a volume is mounted"
defaults write com.apple.frameworks.diskimages auto-open-ro-root -bool true
defaults write com.apple.frameworks.diskimages auto-open-rw-root -bool true
defaults write com.apple.finder OpenWindowForNewRemovableDisk -bool true

echo ""
echo "Disabling the warning when changing a file extension"
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

echo ""
echo "Use column view in all Finder windows by default"
# Four-letter codes for the other view modes: `icnv`, `clmv`, `Flwv`, 'Nlsv'
defaults write com.apple.finder FXPreferredViewStyle Clmv

echo ""
echo "Avoid creating .DS_Store files on network volumes"
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

echo ""
echo "Avoid creating .DS_Store files on USB volumes"
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

echo ""
echo "Enabling snap-to-grid for icons on the desktop and in other icon
views"
/usr/libexec/PlistBuddy -c \
"Set :DesktopViewSettings:IconViewSettings:arrangeBy grid" \
~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c \
"Set :FK_StandardViewSettings:IconViewSettings:arrangeBy grid" \
~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c \
"Set :StandardViewSettings:IconViewSettings:arrangeBy grid" \
~/Library/Preferences/com.apple.finder.plist

echo ""
echo "Show item info near icons on the desktop and in other icon
views"
/usr/libexec/PlistBuddy -c \
"Set :DesktopViewSettings:IconViewSettings:showItemInfo true" \
~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c \
"Set :FK_StandardViewSettings:IconViewSettings:showItemInfo true" \
~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c \
"Set :StandardViewSettings:IconViewSettings:showItemInfo true" \
~/Library/Preferences/com.apple.finder.plist

echo ""
echo "Show item info to the right of the icons on the desktop"
/usr/libexec/PlistBuddy -c \
"Set DesktopViewSettings:IconViewSettings:labelOnBottom false" \
~/Library/Preferences/com.apple.finder.plist

echo ""
echo "Show the ~/Library folder"
chflags nohidden ~/Library

#echo ""
#echo "Don't show the ~/bin directory"
#chflags hidden "${HOME}/bin"

echo ""
echo "Show the /Volumes folder"
sudo chflags nohidden /Volumes

#echo ""
#echo "Remove Dropbox’s green checkmark icons in Finder"
#file=/Applications/Dropbox.app/Contents/Resources/emblem-dropbox-uptodate.icns
#[ -e "${file}" ] && mv -f "${file}" "${file}.bak"

echo ""
echo "Expand the following File Info panes:"
echo '"General", "Open with", and "Sharing & Permissions"'
defaults write com.apple.finder FXInfoPanesExpanded -dict \
     General -bool true \
     OpenWith -bool true \
     Privileges -bool true

#echo ""
#echo "Setting Trash to empty securely by default"
#defaults write com.apple.finder EmptyTrashSecurely -bool true

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
