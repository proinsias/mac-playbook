#!/bin/bash

echo "###############################################################################"
echo "1password"
echo "###############################################################################"

echo ""
echo "Enable Updates"
defaults write com.agilebits.onepassword4.plist CheckForSoftwareUpdatesEnabled -bool true

echo ""
echo "Clear pasteboard after timeout"
defaults write com.agilebits.onepassword4.plist ClearPasteboardAfterTimeout -bool true

echo ""
echo "Completed essential settings"
defaults write com.agilebits.onepassword4.plist CompletedEssentialSettings -bool true

echo ""
echo "Conceal passwords"
defaults write com.agilebits.onepassword4.plist ConcealPasswords -bool true

echo ""
echo "Disable 3rd Party Integration"
defaults write com.agilebits.onepassword4.plist Enable3rdPartyIntegration -bool false

echo ""
echo "Keep helper app running"
defaults write com.agilebits.onepassword4.plist KeepHelperRunning -bool true

echo ""
echo "Lock on idle"
defaults write com.agilebits.onepassword4.plist LockOnIdle -bool true

echo ""
echo "Lock on main app exit"
defaults write com.agilebits.onepassword4.plist LockOnMainAppExit -bool true

echo ""
echo "Lock on screen saver"
defaults write com.agilebits.onepassword4.plist LockOnScreenSaver -bool true

echo ""
echo "Lock on sleep"
defaults write com.agilebits.onepassword4.plist LockOnSleep -bool true

echo ""
echo "Setting timeout for pasteboard clearing"
defaults write com.agilebits.onepassword4.plist PasteboardClearTimeout -string "90"

echo ""
echo "Show backup completed notifications"
defaults write com.agilebits.onepassword4.plist ShowBackupCompletedNotifications -bool true

echo ""
echo "Show 'Copy JSON' in item menu"
defaults write com.agilebits.onepassword4.plist ShowCopyJSONItemMenu -bool true

echo ""
echo "Show 'Copy UUID' in item menu"
defaults write com.agilebits.onepassword4.plist ShowCopyUUIDItemMenu -bool true

echo ""
echo "Show item counts"
defaults write com.agilebits.onepassword4.plist ShowItemCounts 1

echo ""
echo "Show rich icons"
defaults write com.agilebits.onepassword4.plist ShowRichIcons -bool true

echo ""
echo "Show status item"
defaults write com.agilebits.onepassword4.plist ShowStatusItem -bool true

echo ""
echo "Turn off welcome window"
defaults write com.agilebits.onepassword4.plist WelcomeWindowShown -bool false

echo ""
echo "Turn on autosave"
defaults write com.agilebits.onepassword4.plist autosave -bool true

echo ""
echo "Turn on autosubmit"
defaults write com.agilebits.onepassword4.plist autosubmit -bool true


echo ""
echo "Check for software updates"
defaults write com.agilebits.onepassword4-helper.plist CheckForSoftwareUpdatesEnabled -bool true

echo ""
echo "Clear pasteboard after timeout"
defaults write com.agilebits.onepassword4-helper.plist ClearPasteboardAfterTimeout -bool true

echo ""
echo "Completed essential settings"
defaults write com.agilebits.onepassword4-helper.plist CompletedEssentialSettings -bool true

echo ""
echo "Conceal passwords"
defaults write com.agilebits.onepassword4-helper.plist ConcealPasswords -bool true

echo ""
echo "Disable 3rd party integration"
defaults write com.agilebits.onepassword4-helper.plist Enable3rdPartyIntegration -bool false

echo ""
echo "Lock on idle"
defaults write com.agilebits.onepassword4-helper.plist LockOnIdle -bool true

echo ""
echo "Lock on main app exit"
defaults write com.agilebits.onepassword4-helper.plist LockOnMainAppExit -bool false

echo ""
echo "Lock on screen saver"
defaults write com.agilebits.onepassword4-helper.plist LockOnScreenSaver -bool false

echo ""
echo "Lock on sleep"
defaults write com.agilebits.onepassword4-helper.plist LockOnSleep -bool true

echo ""
echo "Lock on user switch"
defaults write com.agilebits.onepassword4-helper.plist LockOnUserSwitch -bool true

echo ""
echo "Set default password length"
defaults write com.agilebits.onepassword4-helper.plist PasswordLength 50

echo ""
echo "Password recipe is visible"
defaults write com.agilebits.onepassword4-helper.plist PasswordRecipeVisible -bool true

echo ""
echo "Passwords should use digits"
defaults write com.agilebits.onepassword4-helper.plist PasswordUseDigits -bool true

echo ""
echo "Passwords should use hypens"
defaults write com.agilebits.onepassword4-helper.plist PasswordUseHyphen -bool true

echo ""
echo "Passwords should use symbols"
defaults write com.agilebits.onepassword4-helper.plist PasswordUseSymbols -bool true

echo ""
echo "Set timeout for pasteboard clearing"
defaults write com.agilebits.onepassword4-helper.plist PasteboardClearTimeout -string "90"

echo ""
echo "Show backup completed notifications"
defaults write com.agilebits.onepassword4-helper.plist ShowBackupCompletedNotifications -bool true

echo ""
echo "Show 'Copy JSON' item menu"
defaults write com.agilebits.onepassword4-helper.plist ShowCopyJSONItemMenu -bool true

echo ""
echo "Show 'Copy UUID' item menu"
defaults write com.agilebits.onepassword4-helper.plist ShowCopyUUIDItemMenu -bool true

echo ""
echo "Show rich icons"
defaults write com.agilebits.onepassword4-helper.plist ShowRichIcons -bool true

echo ""
echo "Show status item"
defaults write com.agilebits.onepassword4-helper.plist ShowStatusItem -bool true

echo ""
echo "Enable 1Password Watchtower"
defaults write 2BUA8C4S2C.com.agilebits.onepassword4-helper \
     watchtowerService -int 1

echo ""
echo "Disable welcome window"
defaults write com.agilebits.onepassword4-helper.plist WelcomeWindowShown -bool false

echo ""
echo "Turn on autosave"
defaults write com.agilebits.onepassword4-helper.plist autosave -bool true

echo ""
echo "Turn on autosubmit"
defaults write com.agilebits.onepassword4-helper.plist autosubmit -bool true
