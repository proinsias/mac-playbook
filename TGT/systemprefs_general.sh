#!/bin/bash

echo "###############################################################################"
echo "System Preferences/General"
echo "###############################################################################"

plist="com.apple.LaunchServices/com.apple.launchservices.secure.plist"

echo ""
echo "Set my default apps for web"
plb=/usr/libexec/PlistBuddy
lsh=":LSHandlers:"
add="Add ${lsh}"
remove="Remove ${lsh}"
set="Set ${lsh}"
add_lsh() {
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
