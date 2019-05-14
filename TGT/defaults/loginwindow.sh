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

#echo ""
#echo "Enable shutdown dialog"
#defaults write com.apple.loginwindow PowerButtonSleepsSystem -bool NO

#Hide Shutdown Button on Login Window:
#$ defaults write com.apple.loginwindow ShutDownDisabled -bool

#Remove Restart Button From Login Window:
#$ defaults write com.apple.loginwindow RestartDisabled -bool

#Disable Login for Hidden User ">Console"
#$ defaults write com.apple.loginwindow DisableConsoleAccess -bool

#Change login screen background:
#$ sudo defaults write /Library/Preferences/com.apple.loginwindow \
#DesktopPicture "/Library/Desktop Pictures/Aqua Blue.jpg"
