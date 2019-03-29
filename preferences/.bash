#!/usr/bin/env bash

vSHELL=/usr/local/bin/bash

if [[ -f "$vSHELL" ]] ; then
    if ! grep -q "$vSHELL" /etc/shells ; then
        echo "$vSHELL" >> /etc/shells
        chsh -s $vSHELL "$USER"
    fi
fi
