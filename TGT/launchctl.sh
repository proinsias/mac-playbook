#!/bin/bash

echo "###############################################################################"
echo "launchctl"
echo "###############################################################################"

echo ""
echo "Turn on locate db"
launchctl load -w /System/Library/LaunchDaemons/com.apple.locate.plist

#echo ""
#echo "Disable Notification Center and remove the menu bar icon"
#launchctl unload -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist 2> /dev/null

echo ""
echo "Using the latest SSH from Homebrew on OSX..."
echo ""
# http://apple.stackexchange.com/a/223855
echo "This changes need to be done manually."
echo "First disable System Integrity Protection (SIP):"
echo "* Reboot your Mac into Recovery Mode by restarting your " \
     "computer and holding down cmd+R until the Apple logo appears " \
     "onyour screen."
echo "* In the menubar click Utilities > Terminal."
echo "* In the Terminal window, type in csrutil disable."
echo "* Restart your Mac."
echo "Next update the ssh-agent preferences:"
echo "* launchctl stop org.openbsd.ssh-agent"
echo "* launchctl unload -w /System/Library/LaunchAgents/org.openbsd.ssh-agent.plist"
echo "* emacs -nw /System/Library/LaunchAgents/org.openbsd.ssh-agent.plist"
echo "* launchctl load -w -S Aqua /System/Library/LaunchAgents/org.openbsd.ssh-agent.plist"
echo "Finally, re-enable SIP in Recovery Mode with csrutil enable."
