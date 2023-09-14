SHELL=$(brew --prefix)/bin/bash

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don't want to commit.
for file in ~/.{functions,path,exports,aliases,extra} ; do
    [ -f "$file" ] && source "$file"
done
unset file

# disable notice about zsh being default
BASH_SILENCE_DEPRECATION_WARNING=1

ulimit -n 1024

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Append to the Bash history file, rather than overwriting it
shopt -s histappend

# If set, the pattern "**" used in a pathname expansion context will match all files and zero or more directories and subdirectories.
if shopt | grep -q globstar ; then
    shopt -s globstar
fi

# Allow ctrl+s to search forward through history
if [[ $- == *i* ]]; then
    stty -ixon
fi

#
# Plugins/extenstions
#
# If possible, add tab completion for many more commands
if [[ -f $(brew --prefix)/etc/bash_completion ]] ; then
    source $(brew --prefix)/etc/bash_completion
fi

# aws tab completion
if [[ -f $(command -v aws_completer) ]] ; then
    complete -C "$(command -v aws_completer)" aws
fi

# python env
if [[ -f $(brew --prefix)/bin/pyenv ]] ; then
    eval "$(pyenv init --path)"
    eval "$(pyenv init -)"
fi

if [[ -f $(command -v pyenv-virtualenv-init) ]] ; then
    eval "$(pyenv virtualenv-init -)"
fi

# enable direnv
if [[ -f $(command -v direnv) ]] ; then
    eval "$(direnv hook bash)"
fi

#
# Launch or use existing ssh-agent
#
check_ssh_agent
if [ $? -ne 0 ] ; then
    killall ssh-agent
    launch_ssh_agent
fi

#
# Prompt
#
eval "$(starship init bash)"
