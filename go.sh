#!/usr/bin/env bash

# Start
echo "$(basename "$0") starting."

# Install/update
go install github.com/sammcj/mcp-devtools@HEAD
go install golang.org/x/tools/gopls@latest

# Finished
echo "$(basename "$0") complete."
