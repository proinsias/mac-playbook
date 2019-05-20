#!/bin/bash

echo "###############################################################################"
echo "System Preferences/Dock"
echo "###############################################################################"


#echo ""
#echo "Enable the 2D Dock"
#defaults write com.apple.dock no-glass -bool true

echo ""
echo "Turn off bouncing icons in dock"
defaults write com.apple.dock no-bouncing -bool TRUE

#echo ""
#echo "Enable highlight hover effect for the grid view of a stack (Dock)"
#defaults write com.apple.dock mouse-over-hilite-stack -bool true

echo ""
echo "Change minimize/maximize window effect"
defaults write com.apple.dock mineffect -string "scale"

#echo ""
#echo "Minimize windows into their application’s icon"
#defaults write com.apple.dock minimize-to-application -bool true

echo ""
echo "Move dock to bottom middle of the screen"
# Other options: "start", "end"
defaults write com.apple.Dock pinning -string "middle"
# Other options: "left", "right"
defaults write com.apple.Dock orientation -string "bottom"

echo ""
echo "Enable spring loading for all Dock items"
defaults write com.apple.dock enable-spring-load-actions-on-all-items -bool true

echo ""
echo "Speeding up Mission Control animations and grouping windows by application"
defaults write com.apple.dock expose-animation-duration -float 0.1
defaults write com.apple.dock "expose-group-by-app" -bool true

echo ""
echo "Setting Dock to auto-hide and removing the auto-hiding delay"
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock autohide-delay -float 0
defaults write com.apple.dock autohide-time-modifier -float 0

echo "Enabling iTunes track notifications in the Dock"
defaults write com.apple.dock itunes-notifications -bool true

#echo ""
#echo "Show only open applications in the Dock"
#defaults write com.apple.dock static-only -bool true

echo ""
echo "Disable the over-the-top focus ring animation"
defaults write NSGlobalDomain NSUseAnimatedFocusRing -bool false

echo ""
echo "Don’t animate opening applications from the Dock"
defaults write com.apple.dock launchanim -bool false

echo ""
echo "Don’t show Dashboard as a Space"
defaults write com.apple.dock dashboard-in-overlay -bool true

#echo ""
#echo "Disable the Launchpad gesture (pinch with thumb and three fingers)"
#defaults write com.apple.dock showLaunchpadGestureEnabled -int 0

#echo ""
#echo "Reset Launchpad, but keep the desktop wallpaper intact"
#find "${HOME}/Library/Application Support/Dock" -name "*-*.db" -maxdepth 1 -delete

#echo ""
#echo "Add iOS Simulator to Launchpad"
#ln -sf "/Applications/Xcode.app/Contents/Developer/Applications/iOS Simulator.app" "/Applications/iOS Simulator.app"
#ln -sf "/Applications/Xcode.app/Contents/Developer/Applications/Simulator.app" "/Applications/Simulator.app"
#ln -sf "/Applications/Xcode.app/Contents/Developer/Applications/Simulator (Watch).app" "/Applications/Simulator (Watch).app"

echo ""
echo "Making launchpad better"
defaults write com.apple.dock springboard-rows -int 8
defaults write com.apple.dock springboard-columns -int 8
defaults write com.apple.dock ResetLaunchPad -bool TRUE

#echo ""
#echo "Add a spacer to the left side of the Dock (where the applications are)"
#defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}'
#echo ""
#echo "Add a spacer to the right side of the Dock (where the Trash is)"
#defaults write com.apple.dock persistent-others -array-add '{tile-data={}; tile-type="spacer-tile";}'

echo ""
echo "Add a Stack with Recent Applications"
defaults write com.apple.dock persistent-others -array-add '{
"tile-data" = { "list-type" = 1; }; "tile-type" = "recents-tile"; }'

# Hot corners
# Possible values:
#  0: no-op
#  2: Mission Control
#  3: Show application windows
#  4: Desktop
#  5: Start screen saver
#  6: Disable screen saver
#  7: Dashboard
# 10: Put display to sleep
# 11: Launchpad
# 12: Notification Center
echo ""
echo "Top left screen corner → Disable screen saver"
defaults write com.apple.dock wvous-tl-corner -int 6
defaults write com.apple.dock wvous-tl-modifier -int 0
echo ""
echo "Bottom right screen corner → Start screen saver"
defaults write com.apple.dock wvous-br-corner -int 5
defaults write com.apple.dock wvous-br-modifier -int 0

echo ""
echo "Make animation snappier"
defaults write com.apple.dock workspaces-edge-delay -float 0.1
