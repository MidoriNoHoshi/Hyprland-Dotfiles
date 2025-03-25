#!/bin/bash

while true; do
  Charge = $(cat /sys/class/power_supply/BAT0/capacity)
  if [ "Charge" -le "4" ]; then
    notify-send "⚠️ Warning: Battery at $Charge %. Save work before shutdown."
    sleep 12
  fi
  sleep 12
done
