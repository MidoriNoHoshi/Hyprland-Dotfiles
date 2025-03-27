#!/usr/bin/env zsh

if ($(cat /sys/class/power_supply/BAT0/capacity) < 10); then
  while true; do
    notify-send -u critical -a "Battery Percentage:" "⚠️ Warning: $(cat /sys/class/power_supply/BAT0/capacity)%"
    sleep 12
  done
else;
  notify-send -a "Battery Percentage:" "$(cat /sys/class/power_supply/BAT0/capacity)%"
fi
