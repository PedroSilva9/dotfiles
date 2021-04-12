#            _
#    _______| |__  _ __ ___
#   |_  / __| '_ \| '__/ __|
#    / /\__ \ | | | | | (__
#   /___|___/_| |_|_|  \___|
#

export TERM="xterm-256color"
export EDITOR=/usr/bin/nvim
export VISUAL=/usr/bin/nvim
export PATH="$HOME/.local/bin:$PATH"
export LC_ALL=en_US.UTF-8
export PLUGIN_PATH="$HOME/.config/zsh/plugins"

autoload -U colors && colors	# Load colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%1~%{$fg[red]%}]%{$fg[magenta]%}$%b "
setopt autocd		# Automatically cd into typed directory.
setopt interactive_comments
stty stop undef		# Disable ctrl-s to freeze terminal.
stty stop ''
stty start ''
stty -ixon
stty -ixoff

# History in cache directory:
HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE=~/.cache/zsh/history
setopt appendhistory

# Basic auto/tab complete:
zstyle ':completion:*' completer _complete
zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' '+l:|=* r:|=*'
autoload -Uz compinit && compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' list-colors "${(@s.:.)LS_COLORS}"
zmodload zsh/complist
_comp_options+=(globdots)		# Include hidden files.

# Load aliases
[ -f "$HOME/.config/zsh/aliasrc" ] && source "$HOME/.config/zsh/aliasrc"
source /home/luk/.config/zsh/aliasrc

function c() {
    cd "$@" && ls
}

function take() {
    mkdir -p $@ && cd ${@:$#}
}

function swap(){
    local TMPFILE=tmp.$$
    mv "$1" $TMPFILE
    mv "$2" "$1"
    mv $TMPFILE "$2"
}

# enable vim mode on commmand line
bindkey -v
KEYTIMEOUT=1

zle -N zle-line-init
zle -N zle-keymap-select

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# Edit line in vim with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

function zle-line-init zle-keymap-select {
    VIM_PROMPT="%{$fg_bold[yellow]%} [% NORMAL]% %{$reset_color%}"
    RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/}"
    RPS2=$RPS1
    zle reset-prompt
}

# add missing vim hotkeys
# http://zshwiki.org/home/zle/vi-mode
bindkey -a u undo
bindkey -a '^T' redo
bindkey '^?' backward-delete-char  #backspace

# history search in vim mode
# http://zshwiki.org./home/zle/bindkeys#why_isn_t_control-r_working_anymore
# ctrl+r to search history
bindkey -M viins '^r' history-incremental-search-backward
bindkey -M vicmd '^r' history-incremental-search-backward

[ -f "/home/luk/.ghcup/env" ] && source "/home/luk/.ghcup/env" # ghcup-env

# opam configuration
test -r /home/luk/.opam/opam-init/init.zsh && . /home/luk/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

# Plugins
source $PLUGIN_PATH/colored-man-pages.plugin.zsh
source $PLUGIN_PATH/zsh-autosuggestions/zsh-autosuggestions.zsh
source $PLUGIN_PATH/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
