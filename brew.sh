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

# install applications
brew install    age \
                aspell \
                awscli \
                cirruslabs/cli/cirrus \
                cirruslabs/cli/tart \
                diffr \
                direnv \
                dog \
                git-secrets \
                jq \
                mas \
                minisign \
                pipx \
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

# cleanup unneeded files
brew cleanup

# Finished
echo "$(basename "$0") complete."
