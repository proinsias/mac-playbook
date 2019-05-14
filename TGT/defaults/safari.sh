#!/bin/bash

echo "###############################################################################"
echo "Safari"
echo "###############################################################################"

echo ""
echo "Set Safari’s home page to 'about:blank' for faster loading"
defaults write com.apple.Safari HomePage -string "about:blank"

echo ""
echo "Prevent Safari from opening 'safe' files automatically after downloading"
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false

echo ""
echo "Reduce up safari render delay"
defaults write com.apple.Safari WebKitInitialTimedLayoutDelay 0.25

echo ""
echo "Allow hitting the Backspace key to go to the previous page in history"
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2BackspaceKeyNavigationEnabled -bool true

#echo ""
#echo "Hide Safari’s bookmarks bar by default"
#defaults write com.apple.Safari ShowFavoritesBar -bool false

echo ""
echo "Hide Safari’s sidebar in Top Sites"
defaults write com.apple.Safari ShowSidebarInTopSites -bool false

#echo ""
#echo "Disable Safari’s thumbnail cache for History and Top Sites"
#defaults write com.apple.Safari DebugSnapshotsUpdatePolicy -int 2

echo ""
echo "Enable Safari’s debug menu"
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true

#echo ""
#echo "Force Safari to open target links in new tabs"
#defaults write com.apple.Safari TargetedClicksCreateTabs -bool true

echo ""
echo "Make Safari’s search banners default to Contains instead of Starts With"
defaults write com.apple.Safari FindOnPageMatchesWordStartsOnly -bool false

echo ""
echo "Remove useless icons from Safari's bookmarks bar?"
select yn in "Yes" "No"; do
  case $yn in
        Yes ) defaults write com.apple.Safari ProxiesInBookmarksBar
          "()"
          break;;
    No ) exit;;
  esac
done

echo ""
echo "Enable the Develop menu and the Web Inspector in Safari"
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true

echo ""
echo "Open pages in tabs instead of windows: automatically"
defaults write com.apple.Safari TabCreationPolicy -int 1

echo ""
echo "Don't make new tabs active"
defaults write com.apple.Safari OpenNewTabsInFront -bool false

echo ""
echo "Command-clicking a link creates tabs"
defaults write com.apple.Safari CommandClickMakesTabs -bool true

echo ""
echo "Don't remember passwords"
defaults write com.apple.Safari AutoFillPasswords -bool false
defaults -currentHost write ~/Library/Preferences/com.apple.Safari AutoFillPasswords -bool false


echo ""
echo "Disable AutoFill from Address Book"
defaults write com.apple.Safari AutoFillFromAddressBook -bool false
defaults -currentHost write ~/Library/Preferences/com.apple.Safari AutoFillFromAddressBook -bool false

echo ""
echo "Disable AutoFill from Credit Card"
defaults write com.apple.Safari AutoFillCreditCardData -bool false
defaults -currentHost write ~/Library/Preferences/com.apple.Safari AutoFillCreditCardData -bool false

#echo ""
#echo "Disable AutoFill from Misc Forms"
#defaults write com.apple.Safari AutoFillMiscellaneousForms -bool false

echo ""
echo "Warn About Fraudulent Websites"
defaults write com.apple.Safari WarnAboutFraudulentWebsites -bool true
defaults -currentHost write ~/Library/Preferences/com.apple.Safari WarnAboutFraudulentWebsites -bool true

echo ""
echo "Enable plug-ins"
defaults write com.apple.Safari WebKitPluginsEnabled -bool true
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2PluginsEnabled -bool true

#echo ""
#echo "Enable Java"
#defaults write com.apple.Safari WebKitJavaEnabled -bool true
#defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2JavaEnabled -bool true

echo ""
echo "Enable JavaScript"
defaults write com.apple.Safari WebKitJavaScriptEnabled -bool true
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2JavaScriptEnabled -bool true

echo ""
echo "Block pop-up windows"
defaults write com.apple.Safari WebKitJavaScriptCanOpenWindowsAutomatically -bool false
defaults -currentHost write ~/Library/Preferences/com.apple.Safari WebKitJavaScriptCanOpenWindowsAutomatically -bool false
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2JavaScriptCanOpenWindowsAutomatically -bool false
defaults -currentHost write ~/Library/Preferences/com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2JavaScriptCanOpenWindowsAutomatically -bool false

echo ""
echo "Treat SHA1 certificates as insecure"
defaults -currentHost write ~/Library/Preferences/com.apple.Safari TreatSHA1CertificatesAsInsecure -bool true

echo ""
echo "Disable Reading List"
defaults write com.apple.Safari com.apple.Safari.ReadingListFetcher.WebKit2PluginsEnabled -bool false
defaults write com.apple.Safari com.apple.Safari.ReadingListFetcher.WebKit2LoadsImagesAutomatically -bool false
defaults write com.apple.Safari com.apple.Safari.ReadingListFetcher.WebKit2LoadsSiteIconsIgnoringImageLoadingPreference -bool true
defaults write com.apple.Safari com.apple.Safari.ReadingListFetcher.WebKit2JavaScriptEnabled -bool false

#echo ""
#echo "Do not track"
#defaults write com.apple.Safari SendDoNotTrackHTTPHeader -bool true

echo ""
echo "Update extensions automatically"
defaults write com.apple.Safari InstallExtensionUpdatesAutomatically -bool true

#echo ""
#echo "Privacy: don’t send search queries to Apple"
#defaults write com.apple.Safari UniversalSearchEnabled -bool false
#defaults write com.apple.Safari SuppressSearchSuggestions -bool true

#echo ""
#echo "Press Tab to highlight each item on a web page"
#defaults write com.apple.Safari WebKitTabToLinksPreferenceKey -bool
#true
#defaults write com.apple.Safari
#com.apple.Safari.ContentPageGroupIdentifier.WebKit2TabsToLinks -bool
#true

echo ""
echo "Show the full URL in the address bar (note: this still hides the scheme)"
defaults write com.apple.Safari ShowFullURLInSmartSearchField -bool true
defaults -currentHost write ~/Library/Preferences/com.apple.Safari ShowFullURLInSmartSearchField -bool true

echo ""
echo "Enable continuous spellchecking"
defaults write com.apple.Safari WebContinuousSpellCheckingEnabled -bool true

echo ""
echo "Enable auto-correct"
defaults write com.apple.Safari WebAutomaticSpellingCorrectionEnabled -bool true
