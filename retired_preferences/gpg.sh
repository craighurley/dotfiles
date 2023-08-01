#!/usr/bin/env bash

# [[ ! -d ~/.gnupg ]] && mkdir -p ~/.gnupg
# chmod 700 ~/.gnupg

# if [[ ! -f ~/.gnupg/gpg-agent.conf ]] ; then
#     cat << EOF > ~/.gnupg/gpg-agent.conf
# default-cache-ttl 86400
# max-cache-ttl 604800
# EOF
#     chmod 644 ~/.gnupg/gpg-agent.conf
#     [[ -f $(command -v gpg-connect-agent) ]] && echo RELOADAGENT | gpg-connect-agent
# fi

# #
# # get public keys
# #
# # keypassxc
# gpg --keyserver keyserver.ubuntu.com --recv-keys CFB4C2166397D0D2
