#!/bin/sh

if [ "$(pgrep -x redshift)" ]; then
    temp=$(sensors | grep Core | awk '{print substr($3, 2, length($3)-6)}' | head -n 1)

    if [ "$temp" -lt 25 ]; then
      echo "%{F#0066ff}"
    elif [ "$temp" -ge 25 ] && [ "$temp" -lt 50 ]; then
      echo "%{F#00cc00}"
    elif [ "$temp" -ge 50 ] && [ "$temp" -lt 75 ]; then
      echo "%{F#ffff00}"
    elif [ "$temp" -ge 75 ] && [ "$temp" -lt 90 ]; then
      echo "%{F#ff9933}"
    elif [ "$temp" -ge 90 ]; then
      echo "%{F#ff3300}"
    else
      echo ""
    fi
fi
