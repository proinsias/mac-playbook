#!/bin/bash

echo "###############################################################################"
echo "iTerm"
echo "###############################################################################"

echo ""
echo "Adjust window for font size change"
defaults write com.googlecode.iterm2 AdjustWindowForFontSizeChange -bool true

echo ""
echo "Allow clipboard access"
defaults write com.googlecode.iterm2 AllowClipboardAccess -bool true

echo ""
echo "Disable animating dimming"
defaults write com.googlecode.iterm2 AnimateDimming -bool false

#echo ""
#echo ""
#defaults write com.googlecode.iterm2 AppleAntiAliasingThreshold 1

#echo ""
#echo ""
#defaults write com.googlecode.iterm2 AppleScrollAnimationEnabled 0

#echo ""
#echo ""
#defaults write com.googlecode.iterm2 AppleSmoothFixedFontsSizeThreshold 1

#echo ""
#echo ""
#defaults write com.googlecode.iterm2 AutoHideTmuxClientSession -bool false

#echo ""
#echo ""
#defaults write com.googlecode.iterm2 CheckTestRelease -bool false

#echo ""
#echo ""
#defaults write com.googlecode.iterm2 ClosingHotkeySwitchesSpaces -bool false

#echo ""
#echo ""
#defaults write com.googlecode.iterm2 CommandSelection -bool false

#echo ""
#echo ""
#defaults write com.googlecode.iterm2 Control 1

#echo ""
#echo ""
#defaults write com.googlecode.iterm2 CopyLastNewline -bool false

#echo ""
#echo ""
#defaults write com.googlecode.iterm2 CopySelection -bool false

echo ""
echo "Disable dimming of background windows"
defaults write com.googlecode.iterm2 DimBackgroundWindows -bool false

#echo ""
#echo ""
#defaults write com.googlecode.iterm2 DimInactiveSplitPanes -bool true

#echo ""
#echo ""
#defaults write com.googlecode.iterm2 DimOnlyText -bool true

#echo ""
#echo ""
#defaults write com.googlecode.iterm2 DisableFullscreenTransparency -bool false

#echo ""
#echo ""
#defaults write com.googlecode.iterm2 EnableRendezvous -bool false

#echo ""
#echo ""
#defaults write com.googlecode.iterm2 FocusFollowsMouse -bool false

#echo ""
#echo ""
#defaults write com.googlecode.iterm2 FsTabDelay 1.0947265625

#echo ""
#echo ""
#defaults write com.googlecode.iterm2 HiddenAdvancedFontRendering -bool false

#echo ""
#echo ""
#defaults write com.googlecode.iterm2 HideActivityIndicator -bool false

echo ""
echo "Don't hide the menu in full screen"
defaults write com.googlecode.iterm2 HideMenuBarInFullscreen -bool false

#echo ""
#echo ""
#defaults write com.googlecode.iterm2 HideScrollbar -bool true

#echo ""
#echo ""
#defaults write com.googlecode.iterm2 HideTab -bool true

#echo ""
#echo ""
#defaults write com.googlecode.iterm2 HighlightTabLabels -bool true

#echo ""
#echo ""
#defaults write com.googlecode.iterm2 HotKeyBookmark \
#     -string "BA49A3D5-D1B4-47AC-8DE5-501143AF35C8"

#echo ""
#echo ""
#defaults write com.googlecode.iterm2 HotKeyTogglesWindow -bool false

#echo ""
#echo ""
#defaults write com.googlecode.iterm2 Hotkey -bool true

#echo ""
#echo ""
#defaults write com.googlecode.iterm2 HotkeyChar 32

#echo ""
#echo ""
#defaults write com.googlecode.iterm2 HotkeyCode 49

#echo ""
#echo ""
#defaults write com.googlecode.iterm2 HotkeyModifiers 786753

echo ""
echo "Show job name"
defaults write com.googlecode.iterm2 JobName -bool true

#echo ""
#echo ""
#defaults write com.googlecode.iterm2 LeftCommand 7

#echo ""
#echo ""
#defaults write com.googlecode.iterm2 LeftOption 2

#echo ""
#echo ""
#defaults write com.googlecode.iterm2 MaxVertically -bool false

#echo ""
#echo ""
#defaults write com.googlecode.iterm2 NSScrollAnimationEnabled -bool false

#echo ""
#echo ""
#defaults write com.googlecode.iterm2 OnlyWhenMoreTabs -bool true

#echo ""
#echo ""
#defaults write com.googlecode.iterm2 OpenArrangementAtStartup -bool false

#echo ""
#echo ""
#defaults write com.googlecode.iterm2 OpenBookmark -bool false

#echo ""
#echo ""
#defaults write com.googlecode.iterm2 PassOnControlClick -bool false

#echo ""
#echo ""
#defaults write com.googlecode.iterm2 PasteFromClipboard -bool false

#echo ""
#echo ""
#defaults write com.googlecode.iterm2 PromptOnClose -bool false

echo ""
echo "Don’t display the annoying prompt when quitting iTerm"
defaults write com.googlecode.iterm2 PromptOnQuit -bool false

#echo ""
#echo ""
#defaults write com.googlecode.iterm2 QuitWhenAllWindowsClosed -bool false

#echo ""
#echo ""
#defaults write com.googlecode.iterm2 RightCommand 8

#echo ""
#echo ""
#defaults write com.googlecode.iterm2 RightOption 3

#echo ""
#echo ""
#defaults write com.googlecode.iterm2 SavePasteHistory -bool false

#echo ""
#echo ""
#defaults write com.googlecode.iterm2 ShowBookmarkName -bool false

#echo ""
#echo ""
#defaults write com.googlecode.iterm2 ShowPaneTitles -bool false

#echo ""
#echo ""
#defaults write com.googlecode.iterm2 SmartPlacement -bool false

#echo ""
#echo ""
#defaults write com.googlecode.iterm2 SplitPaneDimmingAmount 0.400000005960464

#echo ""
#echo ""
#defaults write com.googlecode.iterm2 SwitchTabModifier 4

#echo ""
#echo ""
#defaults write com.googlecode.iterm2 SwitchWindowModifier 6

#echo ""
#echo ""
#defaults write com.googlecode.iterm2 TabViewType 0

#echo ""
#echo ""
#defaults write com.googlecode.iterm2 ThreeFingerEmulates -bool false

#echo ""
#echo ""
#defaults write com.googlecode.iterm2 TripleClickSelectsFullWrappedLines -bool false

#echo ""
#echo ""
#defaults write com.googlecode.iterm2 UseBorder -bool false

#echo ""
#echo ""
#defaults write com.googlecode.iterm2 UseCompactLabel -bool true

#echo ""
#echo ""
#defaults write com.googlecode.iterm2 UseLionStyleFullscreen -bool false

#echo ""
#echo ""
#defaults write com.googlecode.iterm2 WindowNumber -bool false

#echo ""
#echo ""
#defaults write com.googlecode.iterm2 WindowStyle 0

#echo ""
#echo ""
#defaults write com.googlecode.iterm2 WordCharacters -string "/-+\~_."

#echo ""
#echo ""
#defaults write com.googlecode.iterm2 findIgnoreCase_iTerm -bool true

#echo ""
#echo ""
#defaults write com.googlecode.iterm2 findRegex_iTerm -bool false
