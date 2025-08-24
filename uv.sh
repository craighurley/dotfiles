#!/usr/bin/env bash

# Start
echo "$(basename "$0") starting."

if [[ -f $(command -v uv) ]] ; then
    uv tool install ansible-core
    uv tool install ansible-lint
    uv tool install aws-sam-cli
    uv tool install black
    uv tool install cfn-lint
    uv tool install git-remote-codecommit
    uv tool install pre-commit
    uv tool install pycodestyle
    uv tool install pylint
    uv tool install ssmpm
    uv tool install yamllint
fi

# applications that are not immediately needed
# uv tool install cookiecutter

# Finished
echo "$(basename "$0") complete."
