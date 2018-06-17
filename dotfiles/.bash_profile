# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,exports,aliases,functions,extra} ; do
    [ -f "$file" ] && source "$file"
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
if [[ $- == *i* ]]; then
    stty -ixon
fi

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

if [[ -f $(command -v pyenv-virtualenv-init) ]] ; then
    eval "$(pyenv virtualenv-init -)"
fi

# aws tab completion
if [[ -f $(command -v aws_completer) ]] ; then
    complete -C "$(command -v aws_completer)" aws
fi

# configure the prompt after other items have been setup.
if [[ -f ~/.bash_prompt ]] ; then
    source ~/.bash_prompt
fi
