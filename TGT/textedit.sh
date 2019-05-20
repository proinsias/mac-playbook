#!/bin/bash

echo "###############################################################################"
echo "TextEdit"
echo "###############################################################################"

echo ""
echo "Open and save files as UTF-8 in TextEdit"
defaults write com.apple.TextEdit PlainTextEncoding -int 4
defaults write com.apple.TextEdit PlainTextEncodingForWrite -int 4
