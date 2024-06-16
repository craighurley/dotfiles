#!/usr/bin/env bash

# Start
echo "$(basename "$0") starting."

download_dir=~/Downloads

# make the download dir
[[ ! -d "$download_dir" ]] && mkdir -p "$download_dir"

curl -Lo $download_dir/awsls.tar.gz https://github.com/jckuester/awsls/releases/download/v0.11.0/awsls_0.11.0_darwin_arm64.tar.gz
curl -Lo $download_dir/awsrm.tar.gz https://github.com/jckuester/awsrm/releases/download/v0.4.0/awsrm_0.4.0_darwin_arm64.tar.gz
curl -Lo $download_dir/sqlite-tools-osx-x86.zip https://sqlite.org/2024/sqlite-tools-osx-x64-3460000.zip

# Finished
echo "$(basename "$0") complete."
