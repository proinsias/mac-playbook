#!/bin/bash

echo "###############################################################################"
echo "OmniFocus"
echo "###############################################################################"

echo ""
echo "Add service shortcut"
/usr/libexec/PlistBuddy -c \
"Add :NSServicesStatus:'com.omnigroup.OmniFocus2 - OmniFocus 2\: Send to Inbox - _jot':key_equivalent string '@\$x'" \
            pbs.plist > /dev/null 2>&1
/System/Library/CoreServices/pbs -flush
