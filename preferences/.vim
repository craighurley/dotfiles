#!/usr/bin/env bash

###############################################################################
# vim
###############################################################################

# get colour schemes
mkdir -p ~/.vim/colors/
curl -G https://raw.githubusercontent.com/sickill/vim-monokai/master/colors/monokai.vim -o ~/.vim/colors/monokai.vim
