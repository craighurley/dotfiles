#!/usr/bin/env bash

###############################################################################
# python
###############################################################################

vlatest=$(pyenv install --list | grep -E "^\s*[0-9]+\.[0-9]+\.[0-9]+\s*$" | tail -1)

if [[ -f $(brew --prefix)/bin/pyenv ]] ; then
    eval "$(pyenv init -)"
    # shellcheck disable=SC2086
    pyenv install --skip-existing $vlatest
    # (re)create a default based on the latest version and make this system use it
    pyenv virtualenv-delete -f default
    # shellcheck disable=SC2086
    pyenv virtualenv $vlatest default
    pyenv global default
    pyenv exec pip install --upgrade    pip \
                                        rope
    pyenv rehash
else
    echo "ERROR: pyenv is not available."
    exit 1
fi
