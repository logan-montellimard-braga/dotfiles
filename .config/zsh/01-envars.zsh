export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export BIN_HOME="/home/logan/bin"

export LANG="fr_FR.utf8"
export HOSTNAME="loan-deb"
export PATH="$PATH:$BIN_HOME:/sbin:/usr/sbin:/usr/local/bin"

export HISTSIZE=1000
export SAVEHIST=2000
export HISTFILE=$XDG_CONFIG_HOME/zsh/history
export HISTIGNORE="&:ls:[bf]g:exit:reset:clear:cd*"

export SHELL='/bin/zsh'
export ZSH_ACTIVE_COMPLETIONS="$( echo ${(kv)_comps[@]} )"
export EDITOR='vim'
export DISPLAY=:0
eval   $(dircolors -b /home/logan/.dircolors)
export LS_COLORS
