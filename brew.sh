#!/usr/bin/env bash

# Start
echo "$(basename "$0") starting."

# Ask for the administrator password upfront
sudo -v

# make sure brew is on the path
if [[ -d "/opt/homebrew/bin/" ]] ; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
elif [[ -d "/usr/local/bin/" ]] ; then
    eval "$(/usr/local/bin/brew shellenv)"
fi

# Upgrade any already-installed formulae
brew upgrade

# brew apps

# install applications
brew install    age \
                aspell \
                awscli \
                cirruslabs/cli/cirrus \
                cirruslabs/cli/tart \
                diffr \
                direnv \
                doggo \
                git-secrets \
                golang \
                jq \
                mas \
                minisign \
                netcat \
                nmap \
                node \
                pstree \
                pyenv \
                pyenv-virtualenv \
                readline \
                rename \
                saml2aws \
                session-manager-plugin \
                shellcheck \
                sops \
                starship \
                tfenv \
                tree \
                uv \
                watch \
                wget \
                xz \
                yq

# applications that are not immediately needed
# ack
# act
# csvkit
# entr
# geckodriver
# go-task
# hashicorp/tap/packer
# hexyl
# hurl
# iperf3
# iproute2mac
# jsonpp
# k6
# moreutils
# parallel
# rpm
# tcptraceroute
# tmux
# turbot/tap/steampipe

# issues with installer
# unrar

# gnu
brew install    coreutils \
                gnu-sed \
                gnu-tar

# install completion files
brew install    bash-completion \
                pip-completion \

# cask apps

# cask options
export HOMEBREW_CASK_OPTS="--require-sha"

# install applications
brew install --cask appcleaner
brew install --cask docker
brew install --cask firefox --language=en-GB
brew install --cask visual-studio-code

# install unsigned applications
HOMEBREW_CASK_OPTS="" brew install --cask google-chrome

# applications that are not immediately needed
# brew install --cask dash
# brew install --cask dbeaver-community
# brew install --cask dropbox
# brew install --cask flowvision
# brew install --cask microsoft-teams
# brew install --cask mimestream
# brew install --cask obsidian
# brew install --cask raspberry-pi-imager
# brew install --cask sourcetree
# brew install --cask tableplus
# brew install --cask tunnelblick
# brew install --cask wireshark
# brew install --cask zoom

# install fonts
brew install --cask font-hasklig
brew install --cask font-inter

# cleanup unneeded files
brew cleanup

# Finished
echo "$(basename "$0") complete."
