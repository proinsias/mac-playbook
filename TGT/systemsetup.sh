#!/bin/bash

echo "###############################################################################"
echo "systemsetup"
echo "###############################################################################"

## Check System Sleep Idle Time
#systemsetup -getcomputersleep

## Never go into computer sleep mode
# systemsetup -setcomputersleep Off > /dev/null
## or
# systemsetup -setcomputersleep Never

#echo ""
#echo "Set system sleep idle time to 60 minutes"
#systemsetup -setcomputersleep 60

echo ""
echo "Turn off wake on network access"
systemsetup -setwakeonnetworkaccess off

echo ""
echo "Automatic restart on system freeze"
systemsetup -setrestartfreeze on

echo ""
echo "Set the timezone"
#See `sudo systemsetup -listtimezones` for other values
systemsetup -settimezone "America/New_York" > /dev/null
