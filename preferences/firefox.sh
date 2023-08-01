#!/usr/bin/env bash

###############################################################################
# Firefox
###############################################################################

# Parse profiles.ini to find the default profile directory, then sym link config files.
if [[ -f "$HOME/Library/Application Support/Firefox/profiles.ini" ]] ; then
    p="$HOME/Library/Application Support/Firefox/Profiles/$(awk -v lines=2 '/Name=default-release/ {for(i=lines;i;--i)getline; print}' "$HOME/Library/Application Support/Firefox/profiles.ini" | sed 's/Path=Profiles\///g')"
    if [[ -f "$HOME/Projects/dotfiles/applications/firefox/user.js" ]] ; then
        ln -f -s "$HOME/Projects/dotfiles/applications/firefox/user.js" "$p/user.js"
    fi
    if [[ -f "$HOME/Projects/dotfiles/applications/firefox/userChrome.css" ]] ; then
        [[ ! -d "$p/chrome" ]] && mkdir -p "$p/chrome"
        ln -f -s "$HOME/Projects/dotfiles/applications/firefox/userChrome.css" "$p/chrome/userChrome.css"
    fi
else
    echo "Error: $HOME/Library/Application Support/Firefox/profiles.ini does not exist"
fi
