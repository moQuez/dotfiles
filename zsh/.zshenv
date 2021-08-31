#!/bin/zsh

#########################
# Environment Vars
#########################

#default apps
EDITOR="nvim"
VISUAL="nvim"

# dotfiles home
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$XDG_CONFIG_HOME/local/share"
export XDG_CACHE_HOME="$XDG_CONFIG_HOME/cache"

#zsh
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
HISTFILE="$ZDOTDIR/.zshistory"
HISTSIZE=10000
SAVEHIST=100000

#vim
export VIMCONFIG="$XDG_CONFIG_HOME/nvim"

#node
export N_PREFIX="$HOME/Tools/n"

#########################
# PATH
#########################

#n - node
[[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"
