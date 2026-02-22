#!/usr/bin/env bash

# Start
echo "$(basename "$0") starting."

# Install/update
claude mcp add --transport http --scope user excalidraw https://mcp.excalidraw.com
claude mcp add --transport stdio --scope user mcp-devtools --env ENABLE_ADDITIONAL_TOOLS="aws_documentation,code_skim,excel,murican_to_english,process_document,terraform_documentation" -- $HOME/go/bin/mcp-devtools

# Finished
echo "$(basename "$0") complete."
