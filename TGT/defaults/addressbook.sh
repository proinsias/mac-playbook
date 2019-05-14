#!/bin/bash

echo "###############################################################################"
echo "Address Book"
echo "###############################################################################"

echo ""
echo "Enable the debug menu in Address Book"
defaults write com.apple.addressbook ABShowDebugMenu -bool true

echo ""
echo "Show first name before last name"
defaults write com.apple.AddressBook ABNameDisplay -int 0

echo ""
echo "Sort by last name"
defaults write com.apple.AddressBook ABNameSortingFormat 'sortingFirstName sortingLastName'

#Show Contact Reflection:
#$ defaults write com.apple.AddressBook reflection -boolean
