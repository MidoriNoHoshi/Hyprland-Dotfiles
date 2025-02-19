#! /usr/bin/env zsh

# Get the current keyboard layout
layout=$(hyprctl devices | grep -m1 "Layout" | awk '{print $NF}')

case $layout in
  "us")
    echo "English (US)"
    ;;
  "gb")
    echo "English (UK)"
    ;;
  "jp")
    echo "日本語"
    ;;
  "no")
    echo "Norsk Bokmål"
    ;;
  *)
    echo "Unknown"
    ;;
esac
