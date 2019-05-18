#!/bin/bash

echo "###############################################################################"
echo "Input Settings"
echo "###############################################################################"

## Swap the caps lock with control -
## http://apple.stackexchange.com/questions/13598/updating-modifier-key-mappings-through-defaults-command-tool
## Macbook Air
#defaults -currentHost write -g com.apple.keyboard.modifiermapping.1452-588-0 -array-add '<dict><key>HIDKeyboardModifierMapping#Dst</key><integer>2</integer><key>HIDKeyboardModifierMappingSrc</key><integer>0</integer></dict>'

echo ""
echo "Automatically illuminate built-in MacBook keyboard in low light"
defaults write com.apple.BezelServices kDim -bool true

echo ""
echo "Turn off keyboard illumination when computer is not used for 5 minutes"
defaults write com.apple.BezelServices kDimTime -int 300

echo ""
echo "Trackpad: enable tap to click for this user and for the login screen"
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad \
     Clicking -bool true

echo ""
echo "Trackpad: enable click and drag"
defaults write com.apple.AppleMultitouchTrackpad Dragging -bool true
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad \
     Dragging -bool true

#echo ""
#echo "Trackpad: map bottom right corner to right-click"
#defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadCornerSecondaryClick -int 2
#defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadRightClick -bool true

# TODO: CONFIRM BELOW
#echo ""
#echo "Trackpad: swipe between pages with three fingers"
#defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerHorizSwipeGesture -int 1

echo ""
echo "Setting trackpad & mouse speed to a reasonable number"
defaults write -g com.apple.trackpad.scaling 2
defaults write -g com.apple.mouse.scaling 2.5

echo ""
echo "Trackpad: enable tap to click for this user and for the login screen"
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

#echo ""
#echo "Trackpad: swipe between pages with three fingers"
#defaults write NSGlobalDomain AppleEnableSwipeNavigateWithScrolls -bool true
#defaults -currentHost write NSGlobalDomain com.apple.trackpad.threeFingerHorizSwipeGesture -int 1
