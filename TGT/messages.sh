#!/bin/bash

echo "###############################################################################"
echo "Messages"
echo "###############################################################################"

#echo ""
#echo "Disable automatic emoji substitution (i.e. use plain text smileys)"
#defaults write com.apple.messageshelper.MessageController \
#     SOInputLineSettings -dict-add  "automaticEmojiSubstitutionEnablediMessage" -bool false

echo ""
echo "Disable smart quotes as it’s annoying for messages that contain code"
defaults write com.apple.messageshelper.MessageController \
     SOInputLineSettings -dict-add "automaticQuoteSubstitutionEnabled" -bool false

#echo ""
#echo "Disable continuous spell checking"
#defaults write com.apple.messageshelper.MessageController \
#     SOInputLineSettings -dict-add "continuousSpellCheckingEnabled" -bool false
