#!/bin/bash

source $(dirname $0)/config.sh
XPOS=1212
WIDTH="144"
LINES="13"


datea=$(date +%a)
dateb=$(date +%b)
dated=$(date +%d)
datey=$(date +%Y)
datetotal=$(date +%d/%m/%y)
secondline="^fg($highlight) Jour ^fg($highlight2)$(date +%j)^fg($highlight), Semaine ^fg($highlight2)$(date +%W)"

datem=$(date +%m)
datemplus=`echo $datem +1 | bc`
calendar=$(cal $datemplus 2013 | sed 's/^/ /')

(echo " "; echo -e "    ^fg($highlight)$datea ^fg($highlight2)$dated ^fg($highlight)$dateb $datey\n         ^fg($highlight)($datetotal)"; echo " "; echo -e "  $calendar \n $secondline"; echo " "; sleep 60) | dzen2 -fn $font -fg $foreground -bg $background -x $XPOS -y $YPOS -w $WIDTH -l $LINES -e 'onstart=uncollapse,hide;button1=exit;button3=exit'
