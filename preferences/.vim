#!/usr/bin/env bash

###############################################################################
# vim
###############################################################################

vim=$(which vim)

# install plugins
mkdir -p ~/.vim/bundle/
if [[ ! -f ~/.vim/bundle/Vundle.vim ]] ; then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

$vim -e -c PluginInstall -c quitall 2> /dev/null
