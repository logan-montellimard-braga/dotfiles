#!/bin/bash
source $(dirname $0)/config.sh
XPOS=1050
WIDTH="210"
LINES="13"

memtop=$(ps axo %mem,cmd --width 37 | sort -nr | grep -v "CMD" | head -n 10)

(echo "^fg($highlight) Top processes (mem)"; echo "^fg($highlight) Top"; echo "^fg($highlight2)  Mem Processus"; echo " $memtop"; sleep 120) | dzen2 -fn $font -fg $foreground -bg $background -x $XPOS -y $YPOS -w $WIDTH -l $LINES -e 'onstart=uncollapse,hide;button1=exit;button3=exit'
