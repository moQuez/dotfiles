autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:git*' stagedstr " +"
zstyle ':vcs_info:git*' unstagedstr " !"
zstyle ':vcs_info:git*' formats " %b%u%c"
zstyle ':vcs_info:git*' action-formats " %b (%a)%u%c"
zstyle ':vcs_info:git*+set-message:*' hooks git-untracked

+vi-git-untracked() {
  if [[ $(git rev-parse --is-inside-work-tree 2> /dev/null) == 'true' ]] && \
    git status --porcelain | grep -m 1 '^??' &>/dev/null
  then
    hook_com[staged]+=' ?'
  fi
}

precmd() {
  vcs_info
  if [[ -n ${vcs_info_msg_0_} ]]; then
    PROMPT='%n at %~ ${vcs_info_msg_0_} %% '
  else
    PROMPT='%n at %~ %% '
  fi
}

setopt prompt_subst
