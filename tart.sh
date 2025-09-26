#!/usr/bin/env bash

# Start
echo "$(basename "$0") starting."

# tart
if [[ -f $(command -v tart) ]] ; then
    echo "Pulling tart images"
    tart pull ghcr.io/cirruslabs/macos-sequoia-base:latest
    tart pull ghcr.io/cirruslabs/fedora:latest
fi

# Finished
echo "$(basename "$0") complete."
