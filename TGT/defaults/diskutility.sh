#!/bin/bash

echo "###############################################################################"
echo "Disk Utility"
echo "###############################################################################"

echo ""
echo "Enable the debug menu in Disk Utility"
defaults write com.apple.DiskUtility DUDebugMenuEnabled -bool true
defaults write com.apple.DiskUtility advanced-image-options -bool true

#Show hidden Partitions:
#$ defaults write com.apple.DiskUtility DUShowEveryPartition -boolean
