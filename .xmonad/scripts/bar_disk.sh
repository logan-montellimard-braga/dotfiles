#!/bin/bash

source $(dirname $0)/config.sh

FREE=`df -h | grep "$1" | awk '{gsub(/%/,""); print $5}'`
USED=`df -h | grep "$1" | awk '{gsub(/%/,""); print $3}'`
TOTAL=`df -h | grep "$1" | awk '{gsub(/%/,""); print $2}'`

if [[ $FREE -gt 95 ]]; then
    PERCBAR=`echo -e "$FREE"\
        | dzen2-gdbar -bg $bar_bg -fg $bar_fg_warning -h 1 -w 160 | sed "s/\ .*\%//g"`
else
    PERCBAR=`echo -e "$FREE"\
        | dzen2-gdbar -bg $bar_bg -fg $bar_fg -h 1 -w 160 | sed "s/\ .*\%//g"`
fi

ICON='^i(/home/logan/.xmonad/statusbar/icons/mini/file.xbm)'
echo "^fg($highlight2)$ICON^fg($foreground) HOME^fg() $PERCBAR ^fg($highlight)$FREE%"
