#            _
#    _______| |__  _ __ ___
#   |_  / __| '_ \| '__/ __|
#    / /\__ \ | | | | | (__
#   /___|___/_| |_|_|  \___|
#


# If you come from bash you might have to change your $PATH.
export TERM="xterm-256color"
export EDITOR=/usr/bin/nvim
export VISUAL=/usr/bin/nvim
export PATH="$HOME/.local/bin:$PATH"

# Path to your oh-my-zsh installation.
export ZSH="/home/luk/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
    git
    zsh-syntax-highlighting
    colored-man-pages
    zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# Aliases
alias vim="nvim"
alias z="nvim $HOME/.zshrc"
alias v="nvim $HOME/.config/nvim/init.vim"
alias i="nvim $HOME/.config/i3/config"
alias t="nvim $HOME/.config/termite/config"
alias s="nvim $HOME/.config/sxhkd/sxhkdrc"
alias b="nvim $HOME/.config/bspwm/bspwmrc"
alias ga="git add"
alias gc="git commit"
alias gs="git status"
alias ghc="stack ghc"
alias ghci="stack ghci"
alias ka="killall"
alias :q="exit"
alias cat="bat"
alias p="sudo pacman"
alias rt="killall -USR1 termite"
alias rp="pkill -USR1 polybar"
alias m="cd $HOME/Universidade/Masters"
alias alloy="java -jar $HOME/Downloads/electrum-2.1.rc5.jar &"

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

stty stop ''
stty start ''
stty -ixon
stty -ixoff

# enable vim mode on commmand line
bindkey -v

# no delay entering normal mode
# https://coderwall.com/p/h63etq
# https://github.com/pda/dotzsh/blob/master/keyboard.zsh#L10
# 10ms for key sequences
KEYTIMEOUT=1

# show vim status
# http://zshwiki.org/home/examples/zlewidgets
#function zle-line-init zle-keymap-select {
#    RPS1="${${KEYMAP/vicmd/-- NORMAL --}/(main|viins)/-- INSERT --}"
#    RPS2=$RPS1
#    zle reset-prompt
#}
zle -N zle-line-init
zle -N zle-keymap-select

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
