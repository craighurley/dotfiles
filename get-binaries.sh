#!/usr/bin/env bash

# Start
echo "$(basename "$0") starting."

download_dir=~/tmp

# make the download dir
[[ ! -d "$download_dir" ]] && mkdir -p "$download_dir"

curl -Lo $download_dir/awsls_0.11.0_darwin_arm64.tar.gz https://github.com/jckuester/awsls/releases/download/v0.11.0/awsls_0.11.0_darwin_arm64.tar.gz
curl -Lo $download_dir/awsrm_0.2.1_darwin_arm64.tar.gz https://github.com/jckuester/awsrm/releases/download/v0.2.1/awsrm_0.2.1_darwin_arm64.tar.gz
curl -Lo $download_dir/cfn-format-v1.1.2-1_macos-amd64.zip https://github.com/awslabs/aws-cloudformation-template-formatter/releases/download/v1.1.2-1/cfn-format-v1.1.2-1_macos-amd64.zip
curl -Lo $download_dir/dog-v0.1.0-x86_64-apple-darwin.zip https://github.com/ogham/dog/releases/download/v0.1.0/dog-v0.1.0-x86_64-apple-darwin.zip
curl -Lo $download_dir/task_darwin_amd64.tar.gz https://github.com/go-task/task/releases/download/v3.7.0/task_darwin_amd64.tar.gz
curl -Lo $download_dir/TaskFalcon-MacOS.zip https://taskfalcon.org/bin/TaskFalcon-MacOS.zip
curl -Lo $download_dir/terraform_0.13.5_darwin_amd64.zip https://releases.hashicorp.com/terraform/0.13.5/terraform_0.13.5_darwin_amd64.zip
curl -Lo $download_dir/terraform_1.0.4_darwin_arm64.zip https://releases.hashicorp.com/terraform/1.0.4/terraform_1.0.4_darwin_arm64.zip
curl -Lo $download_dir/sqlite-tools-osx-x86-3360000.zip https://www.sqlite.org/2021/sqlite-tools-osx-x86-3360000.zip

# Finished
echo "$(basename "$0") complete."
