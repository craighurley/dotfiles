#!/usr/bin/env bash

# Start
echo "$(basename "$0") starting."

# ssh
[[ ! -d ~/.ssh ]] && mkdir -p ~/.ssh && chmod 700 ~/.ssh
[[ ! -f ~/.ssh/authorized_keys ]] && touch ~/.ssh/authorized_keys && chmod 600 ~/.ssh/authorized_keys

# create folders
[[ ! -d ~/backups ]] && mkdir -p ~/backups
[[ ! -d ~/bin ]] && mkdir -p ~/bin
[[ ! -d ~/Documents/migrated ]] && mkdir -p ~/Documents/migrated
[[ ! -d ~/installs/linux ]] && mkdir -p ~/installs/linux
[[ ! -d ~/installs/macos ]] && mkdir -p ~/installs/macos
[[ ! -d ~/installs/windows ]] && mkdir -p ~/installs/windows
[[ ! -d ~/iso ]] && mkdir -p ~/iso
[[ ! -d ~/Pictures/exports ]] && mkdir -p ~/Pictures/exports
[[ ! -d ~/Pictures/icons ]] && mkdir -p ~/Pictures/icons
[[ ! -d ~/Pictures/screenshots ]] && mkdir -p ~/Pictures/screenshots
[[ ! -d ~/Pictures/wallpaper ]] && mkdir -p ~/Pictures/wallpaper
[[ ! -d ~/Projects/ansible ]] && mkdir -p ~/Projects/ansible
[[ ! -d ~/Projects/hardware ]] && mkdir -p ~/Projects/hardware
[[ ! -d ~/Projects/aws ]] && mkdir -p ~/Projects/aws
[[ ! -d ~/Projects/books ]] && mkdir -p ~/Projects/books
[[ ! -d ~/Projects/cookiecutters ]] && mkdir -p ~/Projects/cookiecutters
[[ ! -d ~/Projects/docker ]] && mkdir -p ~/Projects/docker
[[ ! -d ~/Projects/migrated ]] && mkdir -p ~/Projects/migrated
[[ ! -d ~/Projects/sublime ]] && mkdir -p ~/Projects/sublime
[[ ! -d ~/Projects/vagrant ]] && mkdir -p ~/Projects/vagrant
[[ ! -d ~/Projects/web ]] && mkdir -p ~/Projects/web
[[ ! -d ~/Projects/work ]] && mkdir -p ~/Projects/work
[[ ! -d ~/tmp ]] && mkdir -p ~/tmp

# create a symlink to the scripts folder:
ln -s ~/Projects/scripts ~/.scripts

# Finished
echo "$(basename "$0") complete."
