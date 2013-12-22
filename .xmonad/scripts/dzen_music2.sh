#!/bin/bash
source $(dirname $0)/config.sh
XPOS="783"
WIDTH="210"
LINES="4"

playing=$(mpc current)
artist=$(mpc current -f  %artist%)
album=$(mpc current -f  %album%)
title=$(mpc current -f  %title%)
track=$(mpc current -f %track%)
#time=$(mpc | awk 'NR == 2 {gsub(/[()%]/,""); print $3}')
time=$(mpc current -f %time%)
perc=`mpc | awk 'NR == 2 {gsub(/[()%]/,""); print $4}'`

art="/home/logan/Musique/.covers/$(mpc current -f %album%).png" 

percbar=`echo -e "$perc" | dzen2-gdbar -bg $bar_bg -fg $bar_fg -h 1 -w 200 | sed "s/\ .*\%//g"`

feh -x -B black "$art" -g 48x48+$(($XPOS-160))+$(($YPOS+15)) &
(echo "^fg($highlight)Music"; echo "^fg($foreground) Titre: ^fg($highlight)$title ^fg($highlight2)($time)"; echo "^fg($foreground) Artiste: ^fg($highlight)$artist"; echo "^fg($foreground) Album: ^fg($highlight)$album ^fg($highlight2)($track)"; sleep 3) | dzen2 -fn $font -fg $foreground -bg $background -x $XPOS -y '11' -w $WIDTH -l $LINES -tw '1' -e 'onstart=uncollapse,hide;button1=exit;button3=exit' &
sleep 3 && killall feh &
