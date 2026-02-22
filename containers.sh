#!/usr/bin/env bash

# Start
echo "$(basename "$0") starting."

# docker
if [[ -f $(command -v docker) ]] ; then
    echo "Pulling docker images"
    # base containers
    docker pull alpine
    docker pull golang:1-alpine
    docker pull node:lts-alpine
    docker pull python:3.14-alpine

    # personal containers
    docker pull craighurley/aws-mfa:latest
    docker pull craighurley/cfn-lint:latest
    docker pull craighurley/cfn-nag:latest
    docker pull craighurley/ipcalc:latest
    docker pull craighurley/markdownlint-cli:latest
    docker pull craighurley/org-formation-cli:latest
    docker pull craighurley/rsyslog:latest
    docker pull craighurley/sceptre:latest
    docker pull craighurley/shellcheck:latest
    docker pull craighurley/yamllint:latest
fi

# Finished
echo "$(basename "$0") complete."
