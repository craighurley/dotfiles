#!/usr/bin/env bash

###############################################################################
# jsc
###############################################################################

if [[ -f /System/Library/Frameworks/JavaScriptCore.framework/Resources/jsc ]] ; then
    ln -s /System/Library/Frameworks/JavaScriptCore.framework/Resources/jsc "$(brew --prefix)"/bin/
fi
