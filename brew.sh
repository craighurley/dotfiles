#!/usr/bin/env bash

# Start
echo "$(basename "$0") starting."

# Ask for the administrator password upfront
sudo -v

# Upgrade any already-installed formulae
brew upgrade

# install applications
brew install    ack \
                act \
                age \
                aspell \
                bash \
                cirruslabs/cli/cirrus \
                cirruslabs/cli/tart \
                direnv \
                diffr \
                dog \
                git-secrets \
                hurl \
                jq \
                mas \
                minisign \
                modd \
                pipx \
                pstree \
                pyenv \
                pyenv-virtualenv \
                rain \
                readline \
                rename \
                saml2aws \
                shellcheck \
                tfenv \
                tree \
                watch \
                wget \
                xz \
                yq

# applications that are not immediately needed
# csvkit
# entr
# geckodriver
# go-task/tap/go-task
# hashicorp/tap/packer
# hexyl
# iperf3
# iproute2mac
# jsonpp
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
