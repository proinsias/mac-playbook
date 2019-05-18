#!/bin/bash

echo "###############################################################################"
echo "X11"
echo "###############################################################################"

#Auto-quit on close last window (XQuartz)
#$ defaults write org.macosforge.xquartz.X11 wm_auto_quit -boolean

#Focus follows mouse (10.5.5 and up) (XQuartz)
#$ defaults write org.macosforge.xquartz.X11 wm_ffm -boolean

# Enable “focus follows mouse” for all X11 apps
# i.e. hover over a window and start typing in it without clicking first
#defaults write org.x.X11 wm_ffm -bool true
