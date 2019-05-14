#!/bin/bash

echo "###############################################################################"
echo "Opera & Opera Developer"
echo "###############################################################################"

# Expand the print dialog by default
defaults write com.operasoftware.Opera PMPrintingExpandedStateForPrint2 -boolean true
defaults write com.operasoftware.OperaDeveloper PMPrintingExpandedStateForPrint2 -boolean true
