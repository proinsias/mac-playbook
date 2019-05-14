#!/bin/bash

echo "###############################################################################"
echo "PyCharm"
echo "###############################################################################"

echo ""
echo "Killing application in order to change theme"
killall "PyCharm" > /dev/null 2>&1

echo ""
echo "Downloading solarized theme"
source_dir="${HOME}/Library/Preferences/PyCharm2016.2/colors"
mkdir -p "${source_dir}"
curl -B \
     "https://raw.githubusercontent.com/altercation/solarized/master/intellij-colors-solarized/Solarized%20Dark.xml" \
     -o "${source_dir}/Solarized Dark.xml"
