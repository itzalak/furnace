set -o vi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

case $- in
*i*) ;;
*) return ;;
esac

# avoid duplicate or starting with space to history.
HISTCONTROL=ignoreboth

# append to the file
shopt -s histappend

HISTSIZE=1000
HISTFILESIZE=2000

# Set environment language
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8

# Set default editors
export EDITOR='nvim'
export VISUAL='nvim'
export TERM='xterm-256color'

# XDG directories
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

# Aliases
alias la='ls -lAh --color=auto'
alias ll='ls -lh --color=auto'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ga='git add'
alias gap='git add -p'
alias gaa='git add --all'
alias gc!='git commit --verbose --amend'
alias gcb='git checkout -b'
alias gcm='git commit -m'
alias gco='git switch'
alias gema='git log --pretty="%an - %ae"'
alias glgg='git log --graph'
alias glo="git log --graph --pretty='tformat:%C(auto)%h%d %s %C(black)%C(bold)%cL %C(green)%cr'"
alias gm='git switch main'
alias gsp='git stash pop'
alias gst='git status'
alias gsu='git stash -u -m'
alias v='nvim'
alias t='go-task'

export PATH="/usr/local/bin:$PATH"

# Created by `pipx` on 2024-11-17 13:16:30
export PATH="$PATH:/home/lipwig/.local/bin"
