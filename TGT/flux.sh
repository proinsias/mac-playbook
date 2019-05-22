#!/bin/bash

echo "###############################################################################"
echo "Flux"
echo "###############################################################################"

echo ""
echo "Set flag that Flux has launched before"
defaults write org.herf.Flux.plist SUHasLaunchedBefore -bool true

echo ""
echo "Enable automatic update checks"
defaults write org.herf.Flux.plist SUEnableAutomaticChecks -bool true
