#!/bin/bash

echo "###############################################################################"
echo "QuickTime Player"
echo "###############################################################################"

echo ""
echo "Auto-play videos when opened with QuickTime Player"
defaults write com.apple.QuickTimePlayerX MGPlayMovieOnOpen -bool true
