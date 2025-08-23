#!/usr/bin/env bash

# Start
echo "$(basename "$0") starting."

# Install node packages
npm install -g @anthropic-ai/claude-code
npm install -g @google/gemini-cli

# Finished
echo "$(basename "$0") complete."
