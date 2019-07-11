#!/usr/bin/env bash

directory=~/Projects/dotfiles

$directory/.directories
$directory/.templates
$directory/.macos
$directory/.brew
$directory/.cask
$directory/.dotfiles
$directory/.preferences

# Finished
echo "$(basename "$0") complete."
