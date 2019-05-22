#!/bin/bash

echo "###############################################################################"
echo "System Preferences/Spotlight"
echo "###############################################################################"

#echo "Change indexing order and disable some search results"
#defaults write com.apple.spotlight orderedItems -array \
# '{"enabled" = 1;"name" = "APPLICATIONS";}' \
# '{"enabled" = 1;"name" = "SYSTEM_PREFS";}' \
# '{"enabled" = 1;"name" = "DIRECTORIES";}' \
# '{"enabled" = 1;"name" = "PDF";}' \
# '{"enabled" = 1;"name" = "FONTS";}' \
# '{"enabled" = 0;"name" = "DOCUMENTS";}' \
# '{"enabled" = 0;"name" = "MESSAGES";}' \
# '{"enabled" = 0;"name" = "CONTACT";}' \
# '{"enabled" = 0;"name" = "EVENT_TODO";}' \
# '{"enabled" = 0;"name" = "IMAGES";}' \
# '{"enabled" = 0;"name" = "BOOKMARKS";}' \
# '{"enabled" = 0;"name" = "MUSIC";}' \
# '{"enabled" = 0;"name" = "MOVIES";}' \
# '{"enabled" = 0;"name" = "PRESENTATIONS";}' \
# '{"enabled" = 0;"name" = "SPREADSHEETS";}' \
# '{"enabled" = 0;"name" = "SOURCE";}' \
# '{"enabled" = 0;"name" = "MENU_DEFINITION";}' \
# '{"enabled" = 0;"name" = "MENU_OTHER";}' \
# '{"enabled" = 0;"name" = "MENU_CONVERSION";}' \
# '{"enabled" = 0;"name" = "MENU_EXPRESSION";}' \
# '{"enabled" = 0;"name" = "MENU_WEBSEARCH";}' \
# '{"enabled" = 0;"name" = "MENU_SPOTLIGHT_SUGGESTIONS";}'

echo ""
echo "Make sure indexing is enabled for the main volume"
mdutil -i on / > /dev/null

echo ""
echo "Want to rebuild the Spotlight index?"
select yn in "Yes" "No"; do
  case $yn in
    Yes ) echo "Load new settings before rebuilding the index"
      killall mds > /dev/null 2>&1
      echo "Rebuild the index from scratch"
      mdutil -E / > /dev/null
      break;;
    No ) exit;;
  esac
done
