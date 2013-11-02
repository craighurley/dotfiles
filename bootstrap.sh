#!/usr/bin/env bash

# list of files/folders to symlink in homedir
files=".aliases .bash_profile .bash_prompt .bashrc .curlrc .exports .extra .functions .gitconfig .gitignore_global .hushlogin .inputrc .path .screenrc .wgetrc"

# path to where you cloned the dotfile repo
dotfiles=~/.dotfiles

# path to where you want to store a backup of your original dotfiles.
dotfilesbackup=~/.dotfiles_backup
if [ ! -d $dotfilesbackup ]; then
	mkdir -p $dotfilesbackup
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
