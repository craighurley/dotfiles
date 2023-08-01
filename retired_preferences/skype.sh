#!/usr/bin/env bash

###############################################################################
# Skype
###############################################################################

defaults write com.skype.skype CallsMonitorEnabled -int 0
defaults write com.skype.skype ContactListViewMode -int 1
defaults write com.skype.skype DialpadOpen -int 0
defaults write com.skype.skype ShowDialpadOnLogin -int 0
defaults write com.skype.skype SKChatReportContactsTyping -int 0
defaults write com.skype.skype SKChatReportMeTyping -int 0
defaults write com.skype.skype SKDefaultPSTNCountryCode -string "nz"
defaults write com.skype.skype SKDisableWelcomeTour -int 1
defaults write com.skype.skype SKEmoticonChatStyle -int 1
defaults write com.skype.skype SKShowWatermark -int 0
defaults write com.skype.skype SKUseAwayInactiveTime -int 0
defaults write com.skype.skype SKUseCompactChatStyle -int 1
defaults write com.skype.skype SKUseLargeEmoticons -int 0
