#!/usr/bin/env bash

###############################################################################
# ruby
###############################################################################

v2=2.4.5

if [[ -f "/usr/local/bin/rbenv" ]] ; then
    eval "$(rbenv init -)"

    # install ruby versions
    rbenv install $v2

    # set the global version
    rbenv global $v2

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
