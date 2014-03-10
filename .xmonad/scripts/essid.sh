#!/bin/bash
source $(dirname $0)/config.sh

status=`iwconfig wlan0 | grep 'ESSID' | awk '{gsub(/[:/]/," "); print $5}'`

if [ $status != "off" ]; then
  essid=`iwconfig wlan0 | grep 'ESSID' | awk '{gsub(/[:/]/," "); print $5}' | cut -c 2-15`
  essid_name=`echo $essid`
else
  essid_name=`echo "off"`
fi

echo "$essid_name"
