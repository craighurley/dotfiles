#!/usr/bin/env bash

# Start
echo "$(basename "$0") starting."

# docker
if [[ -f $(command -v docker) ]] ; then
    echo "Pulling docker images"
    # base containers
    docker pull alpine:3.18
    docker pull golang:1-alpine3.18
    docker pull node:lts-alpine3.18
    docker pull python:3.11-alpine3.18

    # personal containers
    docker pull craighurley/aws-mfa:latest
    docker pull craighurley/cfn-lint:latest
    docker pull craighurley/cfn-nag:latest
    docker pull craighurley/ipcalc:latest
    docker pull craighurley/markdownlint-cli:latest
    docker pull craighurley/org-formation-cli:latest
    docker pull craighurley/sceptre:latest
    docker pull craighurley/shellcheck:latest
    docker pull craighurley/yamllint:latest
fi

# tart
if [[ -f $(command -v tart) ]] ; then
    echo "Pulling tart images"
    tart pull ghcr.io/cirruslabs/macos-ventura-base:latest
fi

# Finished
echo "$(basename "$0") complete."
