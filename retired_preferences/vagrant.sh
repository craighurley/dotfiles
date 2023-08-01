#!/usr/bin/env bash

###############################################################################
# vagrant
###############################################################################

if [[ -f "$(brew --prefix)"/bin/vagrant ]] ; then
    # /usr/bin/vagrant plugin install vagrant-hostmanager
    "$(brew --prefix)"/bin/vagrant plugin install vagrant-vbguest
fi
