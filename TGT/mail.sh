#!/bin/bash

echo "###############################################################################"
echo "Mail"
echo "###############################################################################"

echo ""
echo "Disable send and reply animations in Mail.app"
defaults write com.apple.mail DisableReplyAnimations -bool true
defaults write com.apple.mail DisableSendAnimations -bool true

#echo ""
#echo "Add the keyboard shortcut ⌘ + Enter to send an email in Mail.app"
#defaults write com.apple.mail NSUserKeyEquivalents -dict-add "Send" -string "@\\U21a9"

#echo ""
#echo "Display emails in threaded mode, sorted by date (oldest at the top)"
#defaults write com.apple.mail DraftsViewerAttributes -dict-add "DisplayInThreadedMode" -string "yes"
#defaults write com.apple.mail DraftsViewerAttributes -dict-add "SortedDescending" -string "yes"
#defaults write com.apple.mail DraftsViewerAttributes -dict-add "SortOrder" -string "received-date"

#echo ""
#echo "Disable inline attachments (just show the icons)"
#defaults write com.apple.mail DisableInlineAttachmentViewing -bool true

#echo ""
#echo "Disable automatic spell checking"
#defaults write com.apple.mail SpellCheckingBehavior -string "NoSpellCheckingEnabled"

CFPreferencesAppSynchronize "com.apple.mail"

echo ""
echo "Killing application in order to take effect."
killall "Mail" > /dev/null 2>&1
