#!/usr/bin/env bash

directory=~/Projects/dotfiles
if [ ! -f "/usr/local/bin/brew" ]; then
	. $directory/.brew_install
fi

. $directory/.directories
. $directory/.dotfiles
. $directory/.templates
. $directory/.macos
. $directory/.brew
. $directory/.mas
. $directory/.cask
. $directory/.preferences

# For shell format
go get -u mvdan.cc/sh/cmd/shfmt
# Finished
echo "$(basename "$0") complete."
