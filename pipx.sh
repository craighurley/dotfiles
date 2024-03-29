#!/usr/bin/env bash

# Start
echo "$(basename "$0") starting."

if [[ -f $(command -v pipx) ]] ; then
    pipx install ansible-core
    pipx install ansible-lint
    pipx install aws-sam-cli
    pipx install black
    pipx install cfn-lint
    pipx install git-remote-codecommit
    pipx install pre-commit
    pipx install pycodestyle
    pipx install pylint
    pipx install ssmpm
    pipx install yamllint
fi

# applications that are not immediately needed
# pipx install cookiecutter

# Finished
echo "$(basename "$0") complete."
