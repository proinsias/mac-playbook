#!/bin/bash

echo "###############################################################################"
echo "Transmission.app"
echo "###############################################################################"

mkdir -p ~/Downloads/Incomplete

IMPORT_DIR="${HOME}/Downloads"

echo ""
echo "Setting auto-add folder to be Downloads"
defaults write org.m0k.transmission AutoImportDirectory \
     -string "${IMPORT_DIR}"

echo ""
echo "Setting up an incomplete downloads folder in Downloads"
defaults write org.m0k.transmission UseIncompleteDownloadFolder \
     -bool true
defaults write org.m0k.transmission IncompleteDownloadFolder \
     -string "${IMPORT_DIR}/Incomplete"

echo ""
echo "Don't prompt for confirmation before downloading"
defaults write org.m0k.transmission DownloadAsk -bool false

echo ""
echo "Trash original torrent files after adding them"
defaults write org.m0k.transmission DeleteOriginalTorrent -bool true

echo ""
echo "Hiding the donate message"
defaults write org.m0k.transmission WarningDonate -bool false

echo ""
echo "Hiding the legal disclaimer"
defaults write org.m0k.transmission WarningLegal -bool false

echo ""
echo "Auto-resizing the window to fit transfers"
defaults write org.m0k.transmission AutoSize -bool true

echo ""
echo "Setting up the best block list"
defaults write org.m0k.transmission EncryptionRequire -bool true
defaults write org.m0k.transmission BlocklistAutoUpdate -bool true
defaults write org.m0k.transmission BlocklistNew -bool true
defaults write org.m0k.transmission BlocklistURL -string \
     "http://john.bitsurge.net/public/biglist.p2p.gz"
