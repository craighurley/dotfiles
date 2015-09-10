#!/usr/bin/env bash

###############################################################################
# vim
###############################################################################

# get colour schemes
mkdir -p ~/.vim/colors/
curl -G https://raw.githubusercontent.com/sickill/vim-monokai/master/colors/monokai.vim -o ~/.vim/colors/monokai.vim

# install plugins
mkdir -p ~/.vim/bundle/
if [[ ! -f ~/.vim/bundle/Vundle.vim ]] ; then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
