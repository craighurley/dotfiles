#!/usr/bin/env bash

# Start
echo "$(basename "$0") starting."

download_dir=~/tmp

# make the download dir
[[ ! -d "$download_dir" ]] && mkdir -p "$download_dir"

curl -Lo $download_dir/awsls_0.11.0_darwin_arm64.tar.gz https://github.com/jckuester/awsls/releases/download/v0.11.0/awsls_0.11.0_darwin_arm64.tar.gz
curl -Lo $download_dir/awsrm_0.4.0_darwin_arm64.tar.gz https://github.com/jckuester/awsrm/releases/download/v0.4.0/awsrm_0.4.0_darwin_arm64.tar.gz
curl -Lo $download_dir/sqlite-tools-osx-x86-3420000.zip https://www.sqlite.org/2023/sqlite-tools-osx-x86-3420000.zip
curl -Lo $download_dir/TaskFalcon-MacOS.zip https://taskfalcon.org/bin/TaskFalcon-MacOS.zip

# Finished
echo "$(basename "$0") complete."
