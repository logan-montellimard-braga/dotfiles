## ls after a cd
function cd() {
    builtin cd "$*" && ls
}

function cda() {
    builtin cd "$*" && ls -a
}

## Extract anything
extract () {
    if [ -f $1 ] ; then
      case $1 in
        *.tar.bz2)   tar xjf $1     ;;
        *.tar.gz)    tar xzf $1     ;;
        *.bz2)       bunzip2 $1     ;;
        *.rar)       unrar e $1     ;;
        *.gz)        gunzip $1      ;;
        *.tar)       tar xf $1      ;;
        *.tbz2)      tar xjf $1     ;;
        *.tgz)       tar xzf $1     ;;
        *.zip)       unzip $1       ;;
        *.Z)         uncompress $1  ;;
        *.7z)        7z x $1        ;;
        *)     echo "'$1' ne peut pas être extrait via extract()" ;;
         esac
     else
         echo "'$1' n'est pas un fichier valide"
     fi
}

## Color man pages
man() {
    env \
        LESS_TERMCAP_mb=$(printf "\e[1;31m") \
        LESS_TERMCAP_md=$(printf "\e[1;31m") \
        LESS_TERMCAP_me=$(printf "\e[0m") \
        LESS_TERMCAP_se=$(printf "\e[0m") \
        LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
        LESS_TERMCAP_ue=$(printf "\e[0m") \
        LESS_TERMCAP_us=$(printf "\e[1;32m") \
            man "$@"
}

## Advanced directory creation
function mkcd {
  if [ ! -n "$1" ]; then
    echo "Entrez un nom pour ce dossier"
  elif [ -d $1 ]; then
    echo "\`$1' existe déjà"
  else
    mkdir -p $1 && cd $1
  fi
}

## Su -c alias function
function suc {
    if [ ! -n "$1" ]; then
        echo "Entrez une commande à exécuter en root."
    else
        su -c "$*"
    fi
} 
