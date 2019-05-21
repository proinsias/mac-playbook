#!/bin/bash

echo "###############################################################################"
echo "Airplay"
echo "###############################################################################"

echo ""
echo "Show mirroring options"
/usr/libexec/PlistBuddy -c "Set showInMenuBarIfPresent true" \
            com.apple.airplay.plist
