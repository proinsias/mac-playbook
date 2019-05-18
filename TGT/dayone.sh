#!/bin/bash

echo "###############################################################################"
echo "Day One"
echo "###############################################################################"


echo ""
echo "Enable auto backup"
defaults write com.dayoneapp.dayone.plist AutoBackupEnabled -bool true

#echo ""
#echo ""
#defaults write com.dayoneapp.dayone.plist AutoBackupFrequency -string "16"

#echo ""
#echo ""
#defaults write com.dayoneapp.dayone.plist AutoBackupInterval -string "2"

#echo ""
#echo ""
#defaults write com.dayoneapp.dayone.plist AutoBackupMaxCount -string "5"

echo ""
echo "Enable correct spelling in editor"
defaults write com.dayoneapp.dayone.plist EditorCorrectSpellingEnabled -bool true

echo ""
echo "Enable grammar check in editor"
defaults write com.dayoneapp.dayone.plist EditorGrammarCheckEnabled -bool true

echo ""
echo "Enable spell check in editor"
defaults write com.dayoneapp.dayone.plist EditorSpellCheckEnabled -bool true

echo ""
echo "Enable embedded media"
defaults write com.dayoneapp.dayone.plist EmbedMediaEnabled -bool true

echo ""
echo "Set font size"
defaults write com.dayoneapp.dayone.plist FontSize -string "16"

echo ""
echo "Enable inspirational messages"
defaults write com.dayoneapp.dayone.plist InspirationalMessagesEnabled -bool true

echo ""
echo "Link twitter handles"
defaults write com.dayoneapp.dayone.plist LinkTwitterHandles -bool true

#echo ""
#echo ""
#defaults write com.dayoneapp.dayone.plist ListViewSortOrder -string "0"

echo ""
echo "Enable markdown support"
defaults write com.dayoneapp.dayone.plist MarkdownEnabled -bool true

echo ""
echo "Lock if idle"
defaults write com.dayoneapp.dayone.plist SecurityIdleLockEnabled -bool true

echo ""
echo "Set lock time"
defaults write com.dayoneapp.dayone.plist SecurityIdleLockTime -string "20"

echo ""
echo "Enable password protection"
defaults write com.dayoneapp.dayone.plist SecurityPasswordProtectionEnabled -bool true

echo ""
echo "Enable lock on sleep"
defaults write com.dayoneapp.dayone.plist SecuritySleepLockEnabled -bool true
