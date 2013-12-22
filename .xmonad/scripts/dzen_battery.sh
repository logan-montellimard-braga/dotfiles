#!/bin/bash
source $(dirname $0)/config.sh
XPOS=958
WIDTH="102"
LINES="2"


battime=$(acpi -b | sed -n "1p" | awk -F " " '{print $5}')
batperc=$(acpi -b | sed -n "1p" | awk -F " " '{print $4}' | head -c3)
batstatus=$(acpi -b | cut -d',' -f1 | awk -F " " '{print $3}')

if [[ $batstatus == "Discharging" ]]; then
    batstatus="Décharge"
elif [[ $batstatus == "Charging" ]]; then
    batstatus="Charge"
elif [[ $batstatus == "Full" ]]; then
    batstatus="Pleine"
fi
(echo " ^fg($highlight)Battery"; echo "  ^fg($fotatreground)$batstatus ^fg($highlight)$batperc"; echo "  ^fg($highlight)$battime ^fg($foreground)restant"; sleep 30) | dzen2 -tw '1' -fg $foreground -bg  $background -fn $font -x $XPOS -y $YPOS -w $WIDTH -l $LINES -e 'onstart=uncollapse,hide;button1=exit;button3=exit'
