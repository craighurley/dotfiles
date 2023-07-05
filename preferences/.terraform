#!/usr/bin/env bash

###############################################################################
# terraform
###############################################################################

if [[ -f $(brew --prefix)/bin/tfenv ]] ; then
    tfenv install latest
    tfenv use latest
else
    echo "ERROR: tfenv is not available."
    exit 1
fi
