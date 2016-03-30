#!/usr/bin/env bash

###############################################################################
# vim
###############################################################################

# install plugins
mkdir -p ~/.vim/bundle/
if [[ ! -f ~/.vim/bundle/Vundle.vim ]] ; then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

echo "vim preferences complete; don't forget to run ':PluginInstall'"
