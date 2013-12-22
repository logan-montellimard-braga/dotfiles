## Functions
#function ssh_state {
#    if [ -n "$SSh_CONNECTION" ]; then
#        echo "%{$fg[red]%}<%{$fg[white]%}SSH%{$fg[red]%}> "
#    fi
#}

function collapse_pwd {
    if [[ $(pwd) == $HOME ]]; then
        echo "~"
    else    
        echo $(pwd | sed -e "s,^$HOME,~,")
    fi
}

function error_code {
    if [[ $? == 0 ]]; then
        echo ""
    else
        echo "%{$fg[cyan]%}%?%{$reset_color%}"
fi
}

last_command='%(?.>.<)'

## Prompts
#PROMPT='
#  %{$fg[red]%}<%{$fg[white]%}$(collapse_pwd)%{$fg[red]%}> $(ssh_state)
#%{$fg[white]%}$last_command%{$reset_color%} '
#
#RPROMPT='$(error_code)%{$reset_color%}'

PROMPT='
$(error_code) %{$fg[red]%}$last_command %{$reset_color%}'
RPROMPT='%{$fg[cyan]%}$(collapse_pwd)%{$reset_color%}'
