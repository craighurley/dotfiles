#!/usr/bin/env bash

directory=~/Projects/dotfiles

./$directory/.directories
./$directory/.dotfiles
./$directory/.templates
./$directory/.osx
./$directory/.brew
./$directory/.cask
#./$directory/.pip
./$directory/.preferences

# Finished
echo "`basename $0` complete."
