#!/usr/bin/env bash

directory=~/Projects/dotfiles

$directory/directories.sh
$directory/templates.sh
$directory/macos.sh
$directory/brew.sh
$directory/cask.sh
$directory/dotfiles.sh
$directory/preferences.sh
$directory/pipx.sh

# Finished
echo "$(basename "$0") complete."
