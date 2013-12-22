#!/bin/bash
source $(dirname $0)/config.sh

XPOS="674"
YPOS="11"
HEIGHT="12"
WIDTH="430"
LINES="23"

artist=$(mpc current -f %artist%)
album=$(mpc current -f %album%)
url=http://www.last.fm/music/$(mpc current -f %artist% | sed 's/[ \/]/+/g')
urlalbum=$url/$(mpc current -f %album% | sed 's/[ \/]/+/g')
albumbio=$(wget -qO- $urlalbum | lynx -dump -nolist -stdin  | tail -n+60 | awk ' /About this album/ {flag=1;next} /Edit wiki/{flag=0} flag { print }')
albumbiol=$(wget -qO- $urlalbum | lynx -dump -nolist -stdin  | tail -n+60 | awk ' /About this album/ {flag=1;next} /Edit wiki/{flag=0} flag { print }' | wc -l)
LINES=$(( $albumbiol + 3 ))
if [[ $LINES -lt 4 ]]; then
	albumbio="Pas de biographie trouvée."
fi

(echo "^fg($highlight)Music Info "; echo -e "^fg($highlight) $album^fg($foreground)"; echo "$albumbio"; echo " "; sleep 120) | dzen2 -fg $foreground -bg $background -fn $font -x $XPOS -y $YPOS -w $WIDTH -l $LINES -tw '1' -e 'onstart=uncollapse,hide;button1=exit;button3=exit'
