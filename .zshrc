## {{{ ZSH main config file
##
## Autoload
autoload -Uz compinit
autoload -U colors && colors
compinit

## Source other config files
for r in $HOME/.config/zsh/*.zsh; do
  if [[ $DEBUG > 0 ]]; then
    echo "zsh: sourcing $r"
  fi
  source $r
done

## Options
setopt   appendhistory histignoredups histignorespace histnostore \
         menucomplete alwaystoend autoparamslash correct completealiases \
         autocd \
         nomatch \
         notify \
         promptsubst
unsetopt beep
##
## }}}
