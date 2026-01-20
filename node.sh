#!/usr/bin/env bash

# Start
echo "$(basename "$0") starting."

# Update npm
npm install -g npm

# Install node packages
npm install -g @anthropic-ai/claude-code
npm install -g @google/gemini-cli
npm install -g cline

# Finished
echo "$(basename "$0") complete."
