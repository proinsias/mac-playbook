#!/bin/bash

echo "###############################################################################"
echo "X11"
echo "###############################################################################"

# Auto-quit on close last window (XQuartz)
defaults write org.macosforge.xquartz.X11 wm_auto_quit -boolean true
