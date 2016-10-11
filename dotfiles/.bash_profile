# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra} ; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

ulimit -n 1024

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Append to the Bash history file, rather than overwriting it
shopt -s histappend

# Add tab completion for common apps
complete -o "nospace" -W "Contacts Calendar Dock Finder Mail Safari iTunes SystemUIServer Terminal Twitter" killall
complete -o "nospace" -W "cert config decrypt encrypt help id join keygen list-tracking login logout pull push prove reset revoke revoke-proof search sign status switch track untrack update verify version" keybase
complete -o "nospace" -W "clean conductor config copy deploy help infrastructure invoke package provision resume retrieve-logs rollback slurp-config ssh status suspend test upgrade version" rgrav

# Allow ctrl+s to search forward through history
stty -ixon

# If possible, add tab completion for many more commands
if [[ -f $(brew --prefix)/etc/bash_completion ]] ; then
    source $(brew --prefix)/etc/bash_completion
fi

# ruby env
if [[ -f /usr/local/bin/rbenv ]] ; then
    eval "$(rbenv init -)"
fi

# python env
if [[ -f /usr/local/bin/pyenv ]] ; then
    eval "$(pyenv init -)"
fi

# python virtualenvwrapper
if [[ -f /usr/local/bin/virtualenvwrapper.sh ]] ; then
    export PROJECT_HOME=$HOME/Projects
    source /usr/local/bin/virtualenvwrapper.sh
fi

# aws tab completion
if [[ -f $(which aws_completer) ]] ; then
    complete -C $(which aws_completer) aws
fi
