#!/bin/bash

echo "###############################################################################"
echo "Printing"
echo "###############################################################################"

echo ""
echo "Expanding the print panel by default"
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true

echo ""
echo "Automatically quit printer app once the print jobs complete"
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

echo ""
echo "Turn off printer sharing"
cupsctl --no-share-printers
