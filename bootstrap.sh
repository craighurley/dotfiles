#!/usr/bin/env bash

# list of files/folders to symlink in homedir
files=".aliases .bash_profile .bash_prompt .bashrc .curlrc .exports .extra .functions .gitconfig .gitignore_global .hushlogin .inputrc .path .screenrc .wgetrc"
# path to where you cloned the dotfile repo
dotfiles=~/Projects/dotfiles
# path to where you want to store a backup of your original dotfiles.
dotfilesbackup=~/.dotfiles_backup

function doIt() {
    # make the dofiles backup directory
    if [ ! -d $dotfilesbackup ]; then
       mkdir -p $dotfilesbackup
    fi

    # create files that are not in git
    if [ ! -f $dotfiles/.extra ]; then
        touch -p $dotfiles/.extra
    fi
    
    if [ ! -f $dotfiles/.path ]; then
        touch -p $dotfiles/.path
    fi

    # make other file and folders
    if [ ! -d ~/Downloads/_transmission/complete ]; then
        mkdir -p ~/Downloads/_transmission/complete
    fi

    if [ ! -d ~/Downloads/_transmission/incomplete ]; then
        mkdir -p ~/Downloads/_transmission/incomplete
    fi

    if [ ! -d ~/Documents/installs/osx ]; then
        mkdir -p ~/Documents/installs/osx
    fi

    if [ ! -d ~/Documents/installs/linux ]; then
        mkdir -p ~/Documents/installs/linux
    fi

    if [ ! -d ~/Documents/installs/windows ]; then
        mkdir -p ~/Documents/installs/windows
    fi

    if [ ! -d ~/Pictures/Snagit ]; then
        mkdir -p ~/Pictures/Snagit
    fi

    if [ ! -d ~/iso ]; then
        mkdir -p ~/iso
    fi

    if [ ! -d ~/temp ]; then
        mkdir -p ~/temp
    fi

    if [ ! -d ~/.bin ]; then
        mkdir -p ~/.bin
    fi
    
    if [ ! -d ~/.dev ]; then
        mkdir -p ~/.dev
    fi

    if [ ! -d ~/.etc ]; then
        mkdir -p ~/.etc
    fi

    if [ ! -d ~/.pwd ]; then
        mkdir -p ~/.pwd
        chmod 700 ~/.pwd
    fi

    # move any existing dotfiles in dotfilesbackup directory, then create symlinks
    for file in ${files[@]}; do
        if [ -f $file ]; then
            echo "Moving ~/$file from ~ to $dotfilesbackup"
            mv -n ~/$file $dotfilesbackup/
        fi
        echo "Creating symlink ~/$file to $dotfiles/$file"
        ln -s $dotfiles/$file ~/$file
    done
}

read -p "This script will backup your current dotfiles and symlink to a new set of dotfiles. Are you sure? (y/n) " -n 1
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    doIt
fi

unset doIt
