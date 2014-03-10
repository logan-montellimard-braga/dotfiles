#!/bin/bash

source $(dirname $0)/config.sh

STATE=`acpi -b | awk '{gsub(/,/,""); print $3}'`
BAT=`acpi -b | awk '{gsub(/%,/,""); print $4}' | sed 's/%//g' | cut -c 1-3 | bc`
if [ $BAT -le 15 ] && [ $STATE != "Charging" ]; then
    BATBAR=`echo $BAT | dzen2-gdbar -bg $bar_bg -fg $bar_fg_warning -h 1 -w $width | sed "s/\ .*\%//g"`
else
    BATBAR=`echo $BAT | dzen2-gdbar -bg $bar_bg -fg $bar_fg -h 1 -w $width | sed "s/\ .*\%//g"`
fi

if [ $STATE == "Full" ] || [ $STATE == "Charging" ]; then
    ICON="ac3.xbm"
elif [ $BAT -ge 50 ]; then
    ICON="batt3full.xbm"
elif [ $BAT -ge 15 ]; then
    ICON="batt3half.xbm"
elif [ $BAT -ge 1 ]; then
    ICON="batt3empty.xbm"
    notify-send -u critical "Batterie faible ($BAT%), branchez-vous sur secteur."
fi

ICON='^i(/home/logan/.xmonad/statusbar/icons/mini/'"$ICON)"
echo "$ICON $BATBAR"
