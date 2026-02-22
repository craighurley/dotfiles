#!/usr/bin/env bash

# Start
echo "$(basename "$0") starting."

# Install/update
go install github.com/sammcj/mcp-devtools@HEAD
go install github.com/sammcj/run_silent@HEAD

# Finished
echo "$(basename "$0") complete."
