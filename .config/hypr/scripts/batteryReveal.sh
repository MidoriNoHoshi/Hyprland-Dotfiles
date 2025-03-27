#!/usr/bin/env zsh

# Charge = $(cat /sys/class/power_supply/BAT0/capacity)
#
# if $Charge < 10; then
#   while true; do
#     notify-send -u critical "$(cat /sys/class/power_supply/BAT0/capacity)"
#     sleep 10
#   done
# fi

if ($(cat /sys/class/power_supply/BAT0/capacity) < 10); then
  while true; do
    notify-send -u critical "⚠️ Warning: $(cat /sys/class/power_supply/BAT0/capacity)%"
    sleep 12
  done
else;
  notify-send "$(cat /sys/class/power_supply/BAT0/capacity)%"
fi



# notify-send "$(cat /sys/class/power_supply/BAT0/capacity)"

# Charge = $(cat /sys/class/power_supply/BAT0/capacity)
#
# notify-send "⚠️ Warning: Battery at $Charge %. Save work before shutdown."
