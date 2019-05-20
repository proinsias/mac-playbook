#!/bin/bash

echo "###############################################################################"
echo "pmset"
echo "###############################################################################"

## Show All Power Management Settings
#sudo pmset -g

# The -a, -b, -c, -u flags determine whether the settings apply to
# battery ( -b ), charger (wall power) ( -c ), UPS ( -u ) or all ( -a ).

echo ""
echo "Speeding up wake from sleep to 24 hours from an hour"
# http://www.cultofmac.com/221392/quick-hack-speeds-up-retina-macbooks-wake-from-sleep-os-x-tips/
pmset -a standbydelay 86400

echo ""
echo "For charger, disable computer sleep"
pmset -c sleep 0
echo "For battery, put computer to sleep after 15 minutes of inactivity"
pmset -c sleep 0

echo ""
#echo "Disable putting the monitor to sleep"
#pmset -a displaysleep 0
echo "Put display to sleep after 15 minutes of inactivity"
pmset -a displaysleep 15

echo "###############################################################################"
echo "SSD"
echo "###############################################################################"

#echo ""
#echo "Remove the sleep image file to save disk space"
#rm /Private/var/vm/sleepimage

#echo ""
#echo "Create a zero-byte file instead..."
#touch /Private/var/vm/sleepimage
#echo "...and make sure it can’t be rewritten"
#chflags uchg /Private/var/vm/sleepimage

