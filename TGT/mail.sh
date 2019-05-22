#!/bin/bash

echo "###############################################################################"
echo "Mail"
echo "###############################################################################"

CFPreferencesAppSynchronize "com.apple.mail"

echo ""
echo "Killing application in order to take effect."
killall "Mail" > /dev/null 2>&1
