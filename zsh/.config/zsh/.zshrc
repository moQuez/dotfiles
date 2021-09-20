#!/bin/zsh

#########################
# ZSH Configuration
# Executed after profile
#########################

# History
setopt EXTENDED_HISTORY         # Write the history file in the ':start:elapsed;command' format.
setopt SHARE_HISTORY            # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST   # Expire a duplicate event first when trimming history.
setopt HIST_IGNORE_DUPS         # Do not record an event that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS     # Delete an old recorded event if a new event is a duplicate.
setopt HIST_FIND_NO_DUPS        # Do not display a previously found event.
setopt HIST_IGNORE_SPACE        # Do not record an event starting with a space.
setopt HIST_SAVE_NO_DUPS        # Do not write a duplicate event to the history file.
setopt HIST_VERIFY              # Do not execute immediately upon history expansion.

bindkey '\e[A' history-search-backward
bindkey '\e[B' history-search-forward

# Load aliases
source $ZDOTDIR/aliases.zsh

# Enable colors
autoload -Uz colors && colors

# Completion
source $ZDOTDIR/completion.zsh

# Prompt
source $ZDOTDIR/prompt.zsh

# This loads nvm
[ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh" 

