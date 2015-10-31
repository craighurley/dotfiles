#!/usr/bin/env bash

###############################################################################
# vim
###############################################################################

# get colour schemes
mkdir -p ~/.vim/colors/
curl -G https://raw.githubusercontent.com/altercation/vim-colors-solarized/master/colors/solarized.vim -o ~/.vim/colors/solarized.vim

# install plugins
mkdir -p ~/.vim/bundle/
if [[ ! -f ~/.vim/bundle/Vundle.vim ]] ; then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
