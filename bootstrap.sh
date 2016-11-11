#!/usr/bin/env bash

directory=~/Projects/dotfiles

$directory/.directories
$directory/.dotfiles
$directory/.templates
$directory/.macos
$directory/.brew
$directory/.cask
$directory/.preferences

# Finished
echo "$(basename "$0") complete."
