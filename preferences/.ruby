#!/usr/bin/env bash

###############################################################################
# ruby
###############################################################################

vlatest=$(rbenv install -l | grep -E "^\s*[0-9]+\.[0-9]+\.[0-9]+\s*$" | tail -1)

if [[ -f "/usr/local/bin/rbenv" ]] ; then
    eval "$(rbenv init -)"

    # install and set the global ruby version to the latest stable release
    # shellcheck disable=SC2086
    rbenv install $vlatest
    # shellcheck disable=SC2086
    rbenv global $vlatest

    # install gems
    rbenv exec gem install bundler
    rbenv exec gem install cfndsl
    rbenv exec gem install cfn-nag
    rbenv exec gem install mdl
    rbenv exec gem install rubocop
    rbenv exec gem install tmuxinator

    rbenv rehash
else
    echo "ERROR: rbenv is not available."
    exit 1
fi
