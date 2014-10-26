#!/usr/bin/env bash

# list of files/folders to symlink in ~ to dotfiles
files=".aliases .bash_profile .bash_prompt .bashrc .curlrc .exports .functions .gitignore_global .hushlogin .inputrc .mackup.cfg .screenrc .wgetrc"
# path to where you cloned the dotfile repo
dotfiles=~/Projects/dotfiles
# path to where you want to store a backup of your original dotfiles.
dotfilesbackup=~/Projects/.dotfiles_backup

function doIt() {
    # make the dofiles backup directory
    [ ! -d $dotfilesbackup ] && mkdir -p $dotfilesbackup

    # copy templates to ~
    [ ! -f ~/.extra ] && cp $dotfiles/.extra.template ~/.extra
    [ ! -f ~/.path ] && cp $dotfiles/.path.template ~/.path
    [ ! -f ~/.gitconfig ] && cp $dotfiles/.gitconfig.template ~/.gitconfig

    # make other folders
    [ ! -d ~/Downloads/_transmission/complete ] && mkdir -p ~/Downloads/_transmission/complete
    [ ! -d ~/Downloads/_transmission/incomplete ] && mkdir -p ~/Downloads/_transmission/incomplete
    [ ! -d ~/Documents/installs/osx ] && mkdir -p ~/Documents/installs/osx
    [ ! -d ~/Documents/installs/linux ] && mkdir -p ~/Documents/installs/linux
    [ ! -d ~/Documents/installs/windows ] && mkdir -p ~/Documents/installs/windows
    [ ! -d ~/Documents/iso ] && mkdir -p ~/Documents/iso
    [ ! -d ~/Projects/workspace ] && mkdir -p ~/Projects/workspace
    [ ! -d ~/Pictures/Snagit ] && mkdir -p ~/Pictures/Snagit
    [ ! -d ~/temp ] && mkdir -p ~/temp
    [ ! -d ~/dev ] && mkdir -p ~/dev

    # ssh
    [ ! -d ~/.ssh ] && mkdir -p ~/.ssh
    chmod 700 ~/.ssh

    # move any existing dotfiles to dotfilesbackup, then create symlinks from dotfiles to ~
    for file in ${files[@]}; do
        if [ -f $file ]; then
            echo "Moving ~/$file from ~ to $dotfilesbackup"
            mv -n ~/$file $dotfilesbackup/
        fi
        echo "Creating symlink ~/$file to $dotfiles/$file"
        ln -s $dotfiles/$file ~/$file
    done

    # install brew/cask apps
    source $dotfiles/.brew
    source $dotfiles/.cask

    # install python extras
    #source $dotfiles/.pip

    # configure basic settings
    source $dotfiles/.osx
}

read -p "This script will backup your current dotfiles and symlink to a new set of dotfiles. Are you sure? (y/n) " -n 1
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    doIt
fi

unset doIt
