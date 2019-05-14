#!/bin/bash

echo "###############################################################################"
echo "SSH"
echo "###############################################################################"

echo ""
echo "Enable remote login"
launchctl load -w /System/Library/LaunchDaemons/ssh.plist
