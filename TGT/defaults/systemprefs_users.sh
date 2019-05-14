#!/bin/bash

echo "###############################################################################"
echo "System Preferences/Users & Groups"
echo "###############################################################################"

echo ""
echo "Show fast user switching menu as [Icon]"
defaults write -g userMenuExtraStyle -int 2
