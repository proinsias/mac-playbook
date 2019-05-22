#!/bin/bash

echo "###############################################################################"
echo "Google Chrome & Google Chrome Canary"
echo "###############################################################################"

echo ""
echo "Disable the all too sensitive backswipe on trackpads"
defaults write com.google.Chrome AppleEnableSwipeNavigateWithScrolls \
     -bool false
defaults write com.google.Chrome.canary \
     AppleEnableSwipeNavigateWithScrolls -bool false

echo ""
echo "Use the system-native print preview dialog"
defaults write com.google.Chrome DisablePrintPreview -bool true
defaults write com.google.Chrome.canary DisablePrintPreview -bool true

echo ""
echo "Expand the print dialog by default"
defaults write com.google.Chrome PMPrintingExpandedStateForPrint2 \
     -bool true
defaults write com.google.Chrome.canary \
     PMPrintingExpandedStateForPrint2 -bool true
