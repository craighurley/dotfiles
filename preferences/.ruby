#!/usr/bin/env bash

###############################################################################
# ruby
###############################################################################

if [[ -f "/usr/local/bin/rbenv" ]]; then
    # install ruby versions
    rbenv install 2.0.0-p598
    rbenv install 2.0.0-p647
    rbenv install 2.2.3

    # set the global version
    rbenv global 2.2.3

    # install gems
    rbenv exec gem install bundler
    rbenv exec gem install rubocop
    rbenv rehash
fi
