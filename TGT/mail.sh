#!/bin/bash

echo "###############################################################################"
echo "Mail"
echo "###############################################################################"

echo ""
echo "Disable send and reply animations in Mail.app"
defaults write com.apple.mail DisableReplyAnimations -bool true
defaults write com.apple.mail DisableSendAnimations -bool true

CFPreferencesAppSynchronize "com.apple.mail"

echo ""
echo "Killing application in order to take effect."
killall "Mail" > /dev/null 2>&1
