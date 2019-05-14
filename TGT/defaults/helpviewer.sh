#!/bin/bash

echo "###############################################################################"
echo "Help Viewer"
echo "###############################################################################"

echo ""
echo "Set Help Viewer windows to non-floating mode"
defaults write com.apple.helpviewer DevMode -bool true
