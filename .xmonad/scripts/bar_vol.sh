#!/bin/bash

source $(dirname $0)/config.sh

AMASTER=`amixer get Master | awk 'END{gsub(/\[|\]|%/,""); print $5}'`
ASTAT=`amixer get Master | awk 'END{gsub(/\[|\]|%/,""); print $7}'`

if [[ $ASTAT = "on" ]]; then
    ICON="vol2.xbm"
    PERCBAR=`echo "$AMASTER"\
        | dzen2-gdbar -bg $bar_bg -fg $bar_fg -h 1 -w 50 | sed "s/\ .*\%//g"`
else
    ICON="vol3.xbm"
    PERCBAR=`echo 0 \
        | dzen2-gdbar -bg $bar_bg -fg $bar_fg -h 1 -w 50 | sed "s/\ .*\%//g"`
fi
ICON='^i(/home/logan/.xmonad/statusbar/icons/mini/'"$ICON)"
echo "$ICON $PERCBAR"
