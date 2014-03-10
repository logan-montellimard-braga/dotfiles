#!/bin/bash
source $(dirname $0)/config.sh

FREE=`free -m | awk 'NR == 3 {gsub(/%/,""); print $3}'`
PERC=`echo $FREE*100/2012 | bc`

if [[ $PERC -gt 75 ]]; then
    PERCBAR=`echo -e "$PERC" | dzen2-gdbar -bg $bar_bg -fg $bar_fg_warning -h 1 -w $width | sed "s/\ .*\%//g"`
else
    PERCBAR=`echo -e "$PERC" | dzen2-gdbar -bg $bar_bg -fg $bar_fg -h 1 -w $width | sed "s/\ .*\%//g"`
fi

echo "$PERCBAR"
