#!/usr/bin/env zsh

if pgrep -x "waybar" >/dev/null; then
  pkill waybar
else
  waybar &
fi
