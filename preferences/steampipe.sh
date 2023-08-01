#!/usr/bin/env bash

###############################################################################
# steampipe
###############################################################################

if [[ -f "$(brew --prefix)"/bin/steampipe ]] ; then
    "$(brew --prefix)"/bin/steampipe plugin install aws
    "$(brew --prefix)"/bin/steampipe plugin install github
    "$(brew --prefix)"/bin/steampipe plugin install whois
fi
