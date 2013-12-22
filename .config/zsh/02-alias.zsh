## Utilities
alias xampp='bash'
alias grep='grep -Pi --color=always'
alias rm='rm -iv'
alias ls='ls -p --color=always'
alias ll='ls -pl --color=always'
alias lsa='ls -pA --color=always'
alias cp='cp -rv'
alias mv='mv -v'
alias sz='source ~/.zshrc'
alias :q='exit'
alias cl='printf "\ec"'
alias su='su -'
alias mem='free -m'
alias purge='su -c "sync; echo 3 > /proc/sys/vm/drop_caches"'
alias modx='chmod +x'
alias lockx='chmod 000'
alias lockd='chmod 700'
alias weechat='weechat-curses'
alias screenfetch='screenfetch-dev -D "Debian"'
alias mplayer='mplayer_mod'
alias ac='acpi -b'

## Internet
alias ping='ping -c 1 192.168.1.1'
alias pgoo='ping -c 1 google.com'
alias pgoofr='ping -c 1 google.fr | tail -3'
alias ip='wget http://checkip.dyndns.org/ -O - -o /dev/null | cut -d: -f 2 | cut -d\< -f 1'
alias sshx='DISPLAY=:0.0'
alias sshlaptop='ssh logan@192.168.1.11'

## Git
alias gg='cd /home/logan/Documents/Git/ && ls -pA --color=always'
alias g:a='git add'
alias g:r='git rm'
alias g:cl='git clone'
alias g:st='git status'
alias g:pl='git pull'
alias g:ps='git push'
alias g:cm='git commit -m'

## Vim
alias vimall='vim -O *.*'
alias vimsh='vim *.sh'
alias vimallsh='vim -O *.sh'
alias vimrb='vim *.rb'
alias vimallrb='vim -O *.rb'
alias vimhs='vim *.hs'
alias vimallhs='vim -O *.hs'
alias vimc='vim *.{c,h}'
alias vimallc='vim -O *.{c,h}'
alias subconf='vim /home/logan/.config/subtle/subtle.rb'
alias xmoconf='vim /home/logan/.xmonad/xmonad.hs'
alias bspconf='vim /home/logan/.config/bspwm/bspwmrc'
alias sxhconf='vim /home/logan/.config/sxhkd/sxhkdrc'
alias getlum='xbacklight -get'

alias startapache="su -c '/etc/init.d/apache2 start'"
alias stopapache="su -c '/etc/init.d/apache2 stio'"
alias restartapache="su -c '/etc/init.d/apache2 restart'"
alias startmysql="su -c '/etc/init.d/mysql start'"
alias stopmysql="su -c '/etc/init.d/mysql stop'"
alias restartmysql="su -c '/etc/init.d/mysql restart'"
