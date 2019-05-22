#!/bin/bash

echo "###############################################################################"
echo "System Preferences/Security & Privacy"
echo "###############################################################################"

echo "Want to enable FileVault?"
select yn in "Yes" "No"; do
  case $yn in
    Yes ) fdesetup enable
      break;;
    No ) exit;;
  esac
done

