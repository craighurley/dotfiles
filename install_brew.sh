#!/usr/bin/env bash

# Start
echo "$(basename "$0") starting."

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew doctor

# Finished
echo "$(basename "$0") complete."
