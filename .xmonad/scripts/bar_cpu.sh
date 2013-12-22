#!/bin/bash
source $(dirname $0)/config.sh

LDAVG=`cat /proc/loadavg | cut -c 1-4`
PERC=`echo $LDAVG*100 | bc`

if [[ $LDAVG > 2.00 ]]; then
    PERCBAR=`echo -e "$PERC" | dzen2-gdbar -bg $bar_bg -fg $bar_fg_warning -h 1 -w 50 | sed "s/\ .*\%//g"`
else    
    PERCBAR=`echo -e "$PERC" | dzen2-gdbar -bg $bar_bg -fg $bar_fg -h 1 -w 50 | sed "s/\ .*\%//g"`
fi

echo "$PERCBAR"
