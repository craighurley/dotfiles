#!/usr/bin/env bash

# Start
echo "$(basename "$0") starting."

# Enable native plugins
claude plugin install claude-md-management
claude plugin install skill-creator

# Enable native plugins: LSP
claude plugin marketplace update claude-plugins-official
claude plugin install pyright-lsp
claude plugin install typescript-lsp
claude plugin install gopls-lsp
claude plugin install swift-lsp

# Install/update
claude mcp add --transport http --scope user excalidraw https://mcp.excalidraw.com
claude mcp add --transport stdio --scope user mcp-devtools --env ENABLE_ADDITIONAL_TOOLS="aws_documentation,code_skim,excel,murican_to_english,process_document,terraform_documentation" -- $HOME/go/bin/mcp-devtools

# Finished
echo "$(basename "$0") complete."
