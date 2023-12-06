#!/usr/bin/env bash

###############################################################################
# sops
###############################################################################

[[ ! -d "$HOME/Library/Application Support/sops/age" ]] && mkdir -p "$HOME/Library/Application Support/sops/age"

touch "$HOME/Library/Application Support/sops/age/keys.txt"
chmod 600 "$HOME/Library/Application Support/sops/age/keys.txt"
