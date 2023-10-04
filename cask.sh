#!/usr/bin/env bash

# Start
echo "$(basename "$0") starting."

# homebrew options
export HOMEBREW_CASK_OPTS="--require-sha"

# Ask for the administrator password upfront
sudo -v

# setup taps
brew tap homebrew/cask-fonts

# install applications
brew install --cask appcleaner
brew install --cask arq
brew install --cask docker
brew install --cask firefox --language=en-GB
brew install --cask iterm2
brew install --cask visual-studio-code

# install unsigned applications
HOMEBREW_CASK_OPTS="" brew install --cask google-chrome

# applications that are not immediately needed
# brew install --cask arc
# brew install --cask balsamiq-mockups
# brew install --cask chromedriver
# brew install --cask dash
# brew install --cask dbeaver-community
# brew install --cask dropbox
# brew install --cask microsoft-teams
# brew install --cask raspberry-pi-imager
# brew install --cask remarkable
# brew install --cask sourcetree
# brew install --cask stay
# brew install --cask tableplus
# brew install --cask tunnelblick
# brew install --cask wacom-tablet
# brew install --cask wireshark
# brew install --cask zoom

# install fonts
brew install --cask font-hasklig
brew install --cask font-fira-code-nerd-font

# cleanup unneeded files
brew cleanup

# Finished
echo "$(basename "$0") complete."
