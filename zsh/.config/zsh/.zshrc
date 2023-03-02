#!/bin/zsh

#########################
# ZSH Configuration
# Executed after profile
#########################

# History
setopt EXTENDED_HISTORY         # Write the history file in the ':start:elapsed;command' format.
setopt HIST_EXPIRE_DUPS_FIRST   # Expire a duplicate event first when trimming history.
setopt HIST_IGNORE_DUPS         # Do not record an event that was just recorded again.
setopt HIST_IGNORE_SPACE        # Do not record an event starting with a space.
setopt HIST_VERIFY              # Do not execute immediately upon history expansion.
setopt SHARE_HISTORY            # Share history between all sessions.


# Load key bindings
source $ZDOTDIR/keybindings.zsh

# Load aliases
source $ZDOTDIR/aliases.zsh

# Enable colors
autoload -Uz colors && colors

# Completion
source $ZDOTDIR/completion.zsh

# Prompt
# source $ZDOTDIR/prompt.zsh
source $(brew --prefix)/opt/spaceship/spaceship.zsh

# and let Brew take care of the rest
eval "$(/usr/local/bin/brew shellenv)"

# also load rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

