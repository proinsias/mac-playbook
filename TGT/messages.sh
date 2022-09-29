#!/bin/bash

echo "###############################################################################"
echo "Messages"
echo "###############################################################################"

echo ""
echo "Disable smart quotes as it's annoying for messages that contain code"
defaults write com.apple.messageshelper.MessageController \
    SOInputLineSettings -dict-add "automaticQuoteSubstitutionEnabled" -bool false
