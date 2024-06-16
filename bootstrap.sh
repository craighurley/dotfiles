#!/usr/bin/env bash

directory=~/Projects/dotfiles

$directory/directories.sh
$directory/macos.sh
$directory/brew.sh
$directory/dotfiles.sh
$directory/preferences.sh
$directory/pipx.sh
$directory/templates.sh

# Finished
echo "$(basename "$0") complete."
