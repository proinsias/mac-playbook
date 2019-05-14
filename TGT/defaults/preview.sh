#!/bin/bash

echo "###############################################################################"
echo "Preview"
echo "###############################################################################"

#Scale images by default when printing:
#$ defaults write write com.apple.Preview PVImagePrintingScaleMode -boolean

#Preview Auto-rotate by default when printing:
#$ defaults write write com.apple.Preview PVImagePrintingAutoRotate -boolean

#Quit Always Keeps Windows:
#$ defaults write com.apple.Preview NSQuitAlwaysKeepsWindows -boolean
