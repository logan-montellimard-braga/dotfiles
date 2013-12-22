#!/bin/bash
source $(dirname $0)/config.sh
XPOS=928
WIDTH="210"
LINES="15"

cputemp="^fg($foreground) Temp ^fg($highlight)$(sensors | grep "temp1" | cut -d'+' -f2 | head -c2)°C"
loadavg="^fg($foreground) Load ^fg($highlight)$(cat /proc/loadavg | cut -c 1-14)"
ramtotal=$(free -m | sed -n "3p" | awk -F " " '{print $4}')
ramused=$(free -m | sed -n "3p" | awk -F " " '{print $3}')
disktotal=$(df -h --total | grep total | awk '{gsub(/%/,""); print $2}')
diskused=$(df -h --total | grep total | awk '{gsub(/%/,""); print $3}')

kernel="^fg($foreground) Kernel ^fg($highlight)$(uname -r)"
uptime="^fg($foreground) Uptime ^fg($highlight)$(uptime | cut -c 14-18)"

cpu_bar_total=`/home/logan/.xmonad/scripts/bar_cpu2.sh`
mem_bar="^fg($foreground)^i(/home/logan/.xmonad/statusbar/icons/mini/mem.xbm)$(/home/logan/.xmonad/scripts/bar_ram_lg.sh)"
sda_bar=`/home/logan/.xmonad/scripts/bar_disk.sh /dev/sda`
root_bar=`/home/logan/.xmonad/scripts/bar_disk2.sh /dev/sda9`

(echo " ^fg($highlight)System"; echo "         $kernel"; echo "              $uptime"; echo " "; echo " $cpu_bar_total"; echo "          $cputemp"; echo "          $loadavg"; echo " ";  echo " $mem_bar"; echo -e "           ^fg($foreground)USED ^fg($highlight)$ramused MB \n           ^fg($foreground)MAXI ^fg($highlight)$ramtotal MB"; echo " "; echo " $root_bar"; echo -e "           ^fg($foreground)USED ^fg($highlight)$diskused\n           ^fg($foreground)MAXI ^fg($highlight)$disktotal"; sleep 120) | dzen2 -fn $font -fg $foreground -bg $background -x $XPOS -y $YPOS -w $WIDTH -l $LINES -e 'onstart=uncollapse,hide;button1=exit;button3=exit'
