#!/bin/sh

temp=$(xbacklight -get)

if [ "$temp" -lt 10 ]; then
  echo "$temp  %{F#444444}"
elif [ "$temp" -ge 10 ] && [ "$temp" -lt 20 ]; then
  echo "$temp  %{F#555555}"
elif [ "$temp" -ge 20 ] && [ "$temp" -lt 30 ]; then
  echo "$temp  %{F#dfdfdf}"
elif [ "$temp" -ge 30 ] && [ "$temp" -lt 40 ]; then
  echo "$temp  %{F#c0ffff}"
elif [ "$temp" -ge 40 ] && [ "$temp" -lt 50 ]; then
  echo "$temp  %{F#2ecfff}"
elif [ "$temp" -ge 50 ] && [ "$temp" -lt 60 ]; then
  echo "$temp  %{F#0066ff}"
elif [ "$temp" -ge 60 ] && [ "$temp" -lt 70 ]; then
  echo "$temp  %{F#00cc00}"
elif [ "$temp" -ge 70 ] && [ "$temp" -lt 80 ]; then
  echo "$temp  %{F#ffff00}"
elif [ "$temp" -ge 80 ] && [ "$temp" -lt 90 ]; then
  echo "$temp  %{F#ff9933}"
elif [ "$temp" -ge 90 ]; then
  echo "$temp  %{F#ff3300}"
else
  echo "$temp  "
fi
