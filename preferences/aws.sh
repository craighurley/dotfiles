#!/usr/bin/env bash

###############################################################################
# AWS
###############################################################################

[[ ! -L /usr/local/bin/groff ]] && ln -s /usr/bin/mandoc /usr/local/bin/groff

[[ ! -d ~/.aws ]] && mkdir -p ~/.aws
chmod 700 ~/.aws

if [[ ! -f ~/.aws/config ]] ; then
    cat << EOF > ~/.aws/config
[default]
output = json
region = eu-west-1

[profile personal]
output = json
region = eu-west-1
EOF
    chmod 600 ~/.aws/config
fi

if [[ ! -f ~/.aws/credentials ]] ; then
    cat << EOF > ~/.aws/credentials
[default]
aws_access_key_id = TODO
aws_secret_access_key = TODO

[personal]
aws_access_key_id = TODO
aws_secret_access_key = TODO
EOF
    chmod 600 ~/.aws/credentials
fi

if [[ ! -f ~/.saml2aws ]] ; then
    touch ~/.saml2aws
    chmod 600 ~/.saml2aws
fi
