#!/usr/bin/env zsh

current_state=$(bluetoothctl show | grep "Powered" | awk '{print $2}')

if [[ $current_state == "yes" ]]; then
  bluetoothctl power off
  echo "off"
elif [[ $current_state == "no" ]]; then
  bluetoothctl power on
  echo "on"
else
  echo "unknown"
fi
