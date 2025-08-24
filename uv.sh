#!/usr/bin/env bash

# Start
echo "$(basename "$0") starting."

if [[ -f $(command -v uv) ]] ; then
    uv tool install ansible-core --reinstall
    uv tool install ansible-lint --reinstall
    uv tool install aws-sam-cli --reinstall
    uv tool install black --reinstall
    uv tool install cfn-lint --reinstall
    uv tool install git-remote-codecommit --reinstall
    uv tool install pre-commit --reinstall
    uv tool install pycodestyle --reinstall
    uv tool install pylint --reinstall
    uv tool install ssmpm --reinstall
    uv tool install yamllint --reinstall
fi

# applications that are not immediately needed
# uv tool install cookiecutter

# Finished
echo "$(basename "$0") complete."
