## Functions
function prompt_char {
    git branch >/dev/null 2>/dev/null && echo "\n   git" && return
    echo ''
}

function collapse_pwd {
    if [[ $(pwd) == $HOME ]]; then
        echo "~"
    else
        echo $(pwd | sed -e "s,^$HOME,~,")
    fi
}

# function error_code {
#     if [[ %? == 0 ]]; then
#         echo "%?"
#     else
#         echo "%{$fg[yellow]%}%?%{$reset_color%}"
#     fi
# }

last_command="%(?.>.%{$fg[red]%}<<)"

zstyle ':vcs_info:*' stagedstr '✔'
zstyle ':vcs_info:*' unstagedstr '✘'
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' actionformats '%{$fg[yellow]%}%b %F{4}%a... %F{5}%m%F{1}%u%F{2}%c'
# zstyle ':vcs_info:*' formats \
#   '%F{5}[%F{2}%b%F{5}] %F{2}%c%F{3}%u%f'
zstyle ':vcs_info:git*' formats "%{$fg[yellow]%}%b %F{5}%m%F{1}%u%F{2}%c"
zstyle ':vcs_info:git*+set-message:*' hooks git-untracked
+vi-git-untracked() {
  if [[ $(git rev-parse --is-inside-work-tree 2> /dev/null) == 'true' ]] && \
    git status --porcelain | grep '??' &> /dev/null ; then
    hook_com[unstaged]+='%F{1}??%f'
  fi
}

## Prompts
PROMPT='%{$fg[green]%}$(prompt_char) ${vcs_info_msg_0_}
 %{$fg[yellow]%}$last_command %{$reset_color%}'
RPROMPT='%{$fg[red]%}$(collapse_pwd)%{$reset_color%}'
