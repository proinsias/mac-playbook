#!/bin/bash

echo "###############################################################################"
echo "Login Window"
echo "###############################################################################"

echo ""
echo "Want to set a login message?"
select yn in "Yes" "No"; do
  case $yn in
    Yes ) echo 'Enter the login message '
      read -r login_message
      defaults write /Library/Preferences/com.apple.loginwindow \
      LoginwindowText "${login_message}"
      break;;
    No ) exit;;
  esac
done

echo ""
echo "Reveal IP address, hostname, OS version, etc. when clicking the clock in the login window"
defaults write /Library/Preferences/com.apple.loginwindow \
     AdminHostInfo HostName
