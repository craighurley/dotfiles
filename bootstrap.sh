#!/usr/bin/env bash

# list of files/folders to symlink in homedir
files=".aliases .bash_profile .bash_prompt .bashrc .curlrc .exports .extra .functions .git .gitconfig .gitignore_global .hushlogin .inputrc .path .screenrc .wgetrc"

dotfiles=~/.dotfiles
dotfilesbackup=~/.dotfiles_backup
mkdir -p $dotfilesbackup

# move any existing dotfiles in dotfilesbackup directory, then create symlinks
cd $dotfiles
for file in $files; do
    if [ -f $file ]; then
        echo "Moving $file from ~ to $dotfilesbackup"
        mv -n ~/$file ~/$dotfilesbackup
    fi

    echo "Creating symlink ~/$file to $dotfiles/$file"
    ln -s $dotfiles/$file ~/$file
done
