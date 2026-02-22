#!/usr/bin/env bash

# Start
echo "$(basename "$0") starting."

# Update npm
npm install -g npm

# Install node packages
# npm install -g --omit=dev @google/gemini-cli
# npm install -g --omit=dev cline
npm install -g --omit=dev markdownlint-cli

# Finished
echo "$(basename "$0") complete."
