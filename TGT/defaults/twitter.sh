#!/bin/bash

echo "###############################################################################"
echo "Twitter"
echo "###############################################################################"

echo ""
echo "Disable smart quotes as it’s annoying for code tweets"
defaults write com.twitter.twitter-mac \
     AutomaticQuoteSubstitutionEnabled -bool false

#echo ""
#echo "Show the app window when clicking the menu icon"
#defaults write com.twitter.twitter-mac MenuItemBehavior -int 1

echo ""
echo "Enable the hidden ‘Develop’ menu"
defaults write com.twitter.twitter-mac ShowDevelopMenu -bool true

echo ""
echo "Open links in the background"
defaults write com.twitter.twitter-mac openLinksInBackground \
     -bool true

#echo ""
#echo "Allow closing the ‘new tweet’ window by pressing `Esc`"
#defaults write com.twitter.twitter-mac ESCClosesComposeWindow -bool true

echo ""
echo "Show full names rather than Twitter handles"
defaults write com.twitter.twitter-mac ShowFullNames -bool true

#echo ""
#echo "Hide the app in the background if it’s not the front-most window"
#defaults write com.twitter.twitter-mac HideInBackground -bool true
