#!/usr/bin/env bash

###############################################################################
# Safari & WebKit
###############################################################################

# Set Safari's home page to `about:blank` for faster loading
defaults write com.apple.Safari HomePage -string "about:blank"
defaults write com.apple.Safari NewTabBehavior -int 0
defaults write com.apple.Safari NewWindowBehavior -int 0

# Prevent Safari from opening 'safe' files automatically after downloading
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false

# Allow hitting the Backspace key to go to the previous page in history
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2BackspaceKeyNavigationEnabled -bool true

# Hide Safari's bookmarks bar by default
defaults write com.apple.Safari ShowFavoritesBar -bool false

# Disable Safari's thumbnail cache for History and Top Sites
defaults write com.apple.Safari DebugSnapshotsUpdatePolicy -int 2

# Enable Safari's debug menu
#defaults write com.apple.Safari IncludeInternalDebugMenu -bool true

# Make Safari's search banners default to Contains instead of Starts With
defaults write com.apple.Safari FindOnPageMatchesWordStartsOnly -bool false

# Stop Safari sending searches to Apple
defaults write com.apple.Safari UniversalSearchEnabled -bool false

# Disable java
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2JavaEnabled -bool false
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2JavaEnabledForLocalFiles -bool false
