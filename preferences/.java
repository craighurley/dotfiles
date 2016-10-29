#!/usr/bin/env bash

###############################################################################
# java
###############################################################################

_plugin=/Library/Internet\ Plug-Ins/JavaAppletPlugin.plugin

if [[ -d "$_plugin" ]] ; then
    sudo rm -fr "$_plugin"
fi
