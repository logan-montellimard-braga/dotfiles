#!/bin/bash
source $(dirname $0)/config.sh
XPOS=928
WIDTH="210"
LINES="13"

cputop=$(ps axo %cpu,cmd --width 30 | sort -nr | grep -v "CMD" | head -n 10 | sed 's/^/ /' )

(echo "^fg($highlight) Top processes (cpu)"; echo "^fg($highlight) Top"; echo "^fg($highlight2)  cpu Processus"; echo " $cputop"; sleep 120) | dzen2 -fn $font -fg $foreground -bg $background -x $XPOS -y $YPOS -w $WIDTH -l $LINES -e 'onstart=uncollapse,hide;button1=exit;button3=exit'

