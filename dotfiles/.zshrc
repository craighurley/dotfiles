SHELL=/bin/zsh

#
# source
#
source ~/.functions
source ~/.path
source ~/.exports
source ~/.aliases
[[ -f "$HOME/.extra" ]] && source "$HOME/.extra"

# Make $HOSTNAME available for zsh
HOSTNAME=$HOST

# autocomplete and correct case
autoload bashcompinit && bashcompinit
autoload -Uz compinit && compinit
autoload -U select-word-style && select-word-style bash

# load custom completors
[[ -f  /usr/local/bin/aws_completer ]] && complete -C '/usr/local/bin/aws_completer' aws

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' insert-tab false
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*:*:make:*' tag-order 'targets'
# zstyle ':completion:*' list-dirs-first true
# zstyle ':completion:*:matches' group 'yes'
# zstyle ':completion:*' group-name ''

#
# Options
#
unsetopt beep
setopt glob_dots
setopt noautomenu
setopt EXTENDED_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS
setopt HIST_SAVE_NO_DUPS
setopt HIST_VERIFY
setopt INC_APPEND_HISTORY

#
# Bindings
#
bindkey -e

# Use already typed to search history
bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward
bindkey ^R history-incremental-search-backward

# Delete from char forward/backward
bindkey "^K" kill-line
bindkey "^U" backward-kill-line

# Delete
bindkey "^[[3~" delete-char

# Home/end
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line

# Option left/right
bindkey "^[b" backward-word
bindkey "^[f" forward-word
# Unbind
bindkey "\C-n" self-insert
bindkey "\C-p" self-insert

# Place cursor at the end of the line after searching through history
for direction (up down) {
    autoload $direction-line-or-beginning-search
    zle -N $direction-line-or-beginning-search
    key=$terminfo[kcu$direction[1]1]
    for key ($key ${key/O/[})
        bindkey $key $direction-line-or-beginning-search
}

#
# Plugins/extenstions
#
# python env
if [[ -f $(brew --prefix)/bin/pyenv ]] ; then
    eval "$(pyenv init --path)"
    eval "$(pyenv init -)"
fi

if [[ -f $(command -v pyenv-virtualenv-init) ]] ; then
    eval "$(pyenv virtualenv-init -)"
fi

# direnv
if [[ -f $(command -v direnv) ]] ; then
    eval "$(direnv hook zsh)"
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
eval "$(starship init zsh)"
