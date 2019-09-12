#!/bin/sh

temp=$(xbacklight)
lt_10=$(echo "scale=2;$temp < 10.00" | bc)

if [ "$lt_10" -eq 1 ]; then
  temp=$(xbacklight | colrm 2)
else
  temp=$(xbacklight | colrm 3)
fi

if [ "$temp" -lt 10 ]; then
  echo "%{F#444444}"
elif [ "$temp" -ge 10 ] && [ "$temp" -lt 20 ]; then
  echo "%{F#555555}"
elif [ "$temp" -ge 20 ] && [ "$temp" -lt 30 ]; then
  echo "%{F#dfdfdf}"
elif [ "$temp" -ge 30 ] && [ "$temp" -lt 40 ]; then
  echo "%{F#c0ffff}"
elif [ "$temp" -ge 40 ] && [ "$temp" -lt 50 ]; then
  echo "%{F#2ecfff}"
elif [ "$temp" -ge 50 ] && [ "$temp" -lt 60 ]; then
  echo "%{F#0066ff}"
elif [ "$temp" -ge 60 ] && [ "$temp" -lt 70 ]; then
  echo "%{F#00cc00}"
elif [ "$temp" -ge 70 ] && [ "$temp" -lt 80 ]; then
  echo "%{F#ffff00}"
elif [ "$temp" -ge 80 ] && [ "$temp" -lt 90 ]; then
  echo "%{F#ff9933}"
elif [ "$temp" -ge 90 ]; then
  echo "%{F#ff3300}"
else
  echo ""
fi
