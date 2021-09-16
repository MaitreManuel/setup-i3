#!/bin/sh

temp=$(sensors | grep Core | awk '{print substr($3, 2, length($3)-5)}' | head -n 1)

if [ "$temp" -lt 25 ]; then
  echo "%{F#000080}$temp *C  "
elif [ "$temp" -ge 25 ] && [ "$temp" -lt 50 ]; then
  echo "%{F#008000}$temp *C  "
elif [ "$temp" -ge 50 ] && [ "$temp" -lt 75 ]; then
  echo "%{F#808000}$temp *C  "
elif [ "$temp" -ge 75 ] && [ "$temp" -lt 90 ]; then
  echo "%{F#aa5f00}$temp *C  "
elif [ "$temp" -ge 90 ]; then
  echo "%{F#800000}$temp *C  "
else
  echo "$temp *C "
fi
