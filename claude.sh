#!/usr/bin/env bash

# Start
echo "$(basename "$0") starting."

# Native install of claude code
curl -fsSL https://claude.ai/install.sh | bash

# Finished
echo "$(basename "$0") complete."
