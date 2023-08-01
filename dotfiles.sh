#!/usr/bin/env bash

# Start
echo "$(basename "$0") starting."

backup="$HOME/.dotfiles_backup"
directory="$HOME/Projects/dotfiles/dotfiles"
home_files=$(find "$directory" -maxdepth 1 -type f)
config_files=$(find "$directory/.config" -maxdepth 1 -type f)

# make directories
[[ ! -d "$backup" ]] && mkdir -p "$backup"
[[ ! -d "$backup/.config" ]] && mkdir -p "$backup/.config"
[[ ! -d "$HOME/.config" ]] && mkdir -p "$HOME/.config"

function do_dotfiles() {
    # move existing dotfiles to backup, then create symlinks from directory to ~
    # shellcheck disable=SC2068
    for h in ${home_files[@]} ; do
        if [[ -f "$HOME/$(basename "$h")" ]] ; then
            echo "Moving $HOME/$(basename "$h") to $backup"
            mv -n "$HOME/$(basename "$h")" "$backup"/
        fi
        echo "Symlinking $h to $HOME/$(basename "$h")"
        ln -f -s "$h" "$HOME/$(basename "$h")"
    done
}

function do_configfiles() {
    # move existing config dotfiles to config_backup, then create symlinks from directory to ~/.config
    # shellcheck disable=SC2068
    for c in ${config_files[@]} ; do
        if [[ -f "$HOME/.config/$(basename "$c")" ]] ; then
            echo "Moving $HOME/.config/$(basename "$c") to $backup/.config"
            mv -n "$HOME/.config/$(basename "$c")" "$backup/.config"/
        fi
        echo "Symlinking $c to $HOME/.config/$(basename "$c")"
        ln -f -s "$c" "$HOME/.config/$(basename "$c")"
    done
}

read -r -p "This script will backup your current dotfiles and symlink to a new set of dotfiles. Are you sure? (y/n) " -n 1
echo
if [[ $REPLY =~ ^[Yy]$ ]] ; then
    do_dotfiles
    do_configfiles
fi

unset do_dotfiles
unset do_configfiles

# Finished
echo "$(basename "$0") complete."
