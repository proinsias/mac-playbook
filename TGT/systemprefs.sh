#!/bin/bash

echo "###############################################################################"
echo "System Preferences"
echo "###############################################################################"

echo ""
echo "Organize System Preferences Alphabetically"
defaults write com.apple.systempreferences ShowAllMode -bool true

core_apps="/System/Library/CoreServices/Applications"
archives_pref="${core_apps}/Archive Utility.app/Contents/Resources/Archives.prefPane"

echo ""
echo "Install hidden Archive settings preference pane"
cp -r "${archives_pref}" /Library/PreferencePanes/.

echo ""
echo "Symlink Network Utility.app"
ln -s "${core_apps}/Network Utility.app" /Applications/.

echo ""
echo "Symlink Feedback Assistant.app"
ln -s "${core_apps}/Feedback Assistant.app" /Applications/.

echo ""
echo "Symlink Directory Utility.app"
ln -s "${core_apps}/Directory Utility.app" /Applications/.
