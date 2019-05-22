#!/bin/bash

echo "###############################################################################"
echo "Bartender"
echo "###############################################################################"

plist="com.surteesstudios.Bartender.plist"

echo ""
echo "Show menu bar icon"
defaults write "${plist}" showMenuBarIcon -bool true

echo ""
echo "Show menu bar at startup"
defaults write "${plist}" showBarAtStartup -bool true

echo ""
echo "Add my default preferences for certain menu items"
plb=/usr/libexec/PlistBuddy
appS=":appSettings:"
add="Add ${appS}"
remove="Remove ${appS}"
set="Set ${appS}"
add_app_settings() {
    menuitem="${1}"
    "${plb}" -c "${remove}${menuitem}" "${plist}"
    "${plb}" -c "${add}${menuitem} dict" "${plist}"
    "${plb}" -c "${add}${menuitem}:showForUpdates bool" "${plist}"
    "${plb}" -c "${set}${menuitem}:showForUpdates true" "${plist}"
    "${plb}" -c "${add}${menuitem}:popupFix bool" "${plist}"
    "${plb}" -c "${set}${menuitem}:popupFix false" "${plist}"
    "${plb}" -c "${add}${menuitem}:updateDisplayTime integer" "${plist}"
    "${plb}" -c "${set}${menuitem}:updateDisplayTime 60" "${plist}"
    "${plb}" -c "${add}${menuitem}:controlled integer" "${plist}"
    "${plb}" -c "${set}${menuitem}:controlled 1" "${plist}"
}

add_app_settings "com.apple.menuextra.bluetooth"
add_app_settings "com.box.sync"
add_app_settings "com.corecode.SMARTReporter"
add_app_settings "com.getdropbox.dropbox"
add_app_settings "com.google.GoogleDrive"
add_app_settings "com.softorino.iBetterCharge"
add_app_settings "net.tunnelblick.tunnelblick"
add_app_settings "org.herf.Flux"

menuitem="com.apple.menuextra.volume"
"${plb}" -c "${add}${menuitem} dict" "${plist}"
"${plb}" -c "${add}${menuitem}:showForUpdates bool" "${plist}"
"${plb}" -c "${set}${menuitem}:showForUpdates false" "${plist}"
"${plb}" -c "${add}${menuitem}:popupFix bool" "${plist}"
"${plb}" -c "${set}${menuitem}:popupFix false" "${plist}"
"${plb}" -c "${add}${menuitem}:updateDisplayTime integer" "${plist}"
"${plb}" -c "${set}${menuitem}:updateDisplayTime 5" "${plist}"
"${plb}" -c "${add}${menuitem}:controlled integer" "${plist}"
"${plb}" -c "${set}${menuitem}:controlled 2" "${plist}"
