#!/bin/bash
source $(dirname $0)/config.sh
XPOS='674'
WIDTH="430"

artist=$(mpc current -f %artist%)
url=http://www.last.fm/music/$(mpc current -f %artist% | sed 's/[ \/]/+/g')
urlalbum=$url/$(mpc current -f %album% | sed 's/[ \/]/+/g')
bio=$(wget -qO- $url | lynx -dump -nolist -stdin  | tail -n+100 | awk ' /Biography/ {flag=1;next} /Edit bio/{flag=0} flag { print }' | sed 's/^/ /')
biol=$(wget -qO- $url | lynx -dump -nolist -stdin  | tail -n+100 | awk ' /Biography/ {flag=1;next} /Edit bio/{flag=0} flag { print }' | wc -l)
LINES=$(( $biol + 3 ))
if [[ $LINES -eq 3 ]]; then
	bio="No bio found"
fi

(echo "^fg($highlight)Music Info "; echo "^fg($highlight) $artist"; echo "$bio";  echo " "; sleep 120) | dzen2 -tw '1' -fg $foreground -bg $background -fn $font -x $XPOS -y $YPOS -w $WIDTH -l $LINES -e 'onstart=uncollapse,hide;button1=exit;button3=exit'
