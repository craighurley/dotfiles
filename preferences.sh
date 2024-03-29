#!/usr/bin/env bash

# Start
echo "$(basename "$0") starting."

# Ask for the administrator password upfront
sudo -v

directory=~/Projects/dotfiles/preferences
files=$(find $directory -iname "*.sh" -maxdepth 1 -type f)

# shellcheck disable=SC2068
for file in ${files[@]} ; do
    if [[ -f "$file" ]] ; then
        # shellcheck disable=SC1090
        source "$file"
    fi
done

# Finished
echo "$(basename "$0") complete."
