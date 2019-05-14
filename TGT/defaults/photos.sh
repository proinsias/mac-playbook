#!/bin/bash

echo "###############################################################################"
echo "Photos"
echo "###############################################################################"

echo ""
echo "Disable Photos.app from starting everytime a device is plugged in"
defaults -currentHost write com.apple.ImageCapture disableHotPlug \
     -bool true
