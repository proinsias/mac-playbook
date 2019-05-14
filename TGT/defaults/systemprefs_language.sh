#!/bin/bash

echo "###############################################################################"
echo "System Preferences/Language & Region"
echo "###############################################################################"

echo ""
echo "Set language and text formats"
defaults write NSGlobalDomain AppleLanguages -array "en"
defaults write NSGlobalDomain AppleLocale -string "en_US@currency=USD"
defaults write NSGlobalDomain AppleMeasurementUnits -string "Inches"
defaults write NSGlobalDomain AppleMetricUnits -bool false

echo ""
echo "Use 24-hour format"
defaults write "Apple Global Domain" AppleICUForce24HourTime 1

echo ""
echo "Use Monday as the first day of the week"
defaults write "Apple Global Domain" AppleFirstWeekday = '{
        gregorian = 2;
        }'
