#!/usr/bin/env bash

[[ ! -d ~/.ssh ]] && mkdir -p ~/.ssh
chmod 700 ~/.ssh

if [[ ! -f ~/.ssh/config ]] ; then
    cat << EOF > ~/.ssh/config
Host *
    AddKeysToAgent          yes
    ConnectTimeout          5
    ControlMaster           auto
    ControlPath             ~/.ssh/%C
    ControlPersist          30
    ServerAliveInterval     60
    TCPKeepAlive            yes
    UseKeychain             yes

Host github.com
    HostName                ssh.github.com
    IdentitiesOnly          yes
    IdentityFile            ~/.ssh/$USER
    PasswordAuthentication  no
    Port                    443

Host gitlab.com
    HostName                altssh.gitlab.com
    IdentitiesOnly          yes
    IdentityFile            ~/.ssh/$USER
    PasswordAuthentication  no
    Port                    443
    User                    git

Host 192.168.*.* *.local localhost
    LogLevel                ERROR
    StrictHostKeyChecking   no
    UserKnownHostsFile      /dev/null
EOF
fi

[[ -f ~/.ssh/config ]] && chmod 600 ~/.ssh/config
