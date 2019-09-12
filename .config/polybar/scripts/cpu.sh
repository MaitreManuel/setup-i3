#!/bin/sh

temp=$(grep 'cpu ' /proc/stat | awk '{usage=($2+$4)*100/($2+$4+$5)} END {print usage}')
lt_10=$(echo "scale=2;$temp < 10.00" | bc)

if [ "$lt_10" -eq 1 ]; then
  temp=$(grep 'cpu ' /proc/stat | awk '{usage=($2+$4)*100/($2+$4+$5)} END {print usage}' | colrm 2)
else
  temp=$(grep 'cpu ' /proc/stat | awk '{usage=($2+$4)*100/($2+$4+$5)} END {print usage}' | colrm 3)
fi

if [ "$temp" -lt 25 ]; then
  echo "%{F#0066ff} "
elif [ "$temp" -ge 25 ] && [ "$temp" -lt 50 ]; then
  echo "%{F#00cc00} "
elif [ "$temp" -ge 50 ] && [ "$temp" -lt 75 ]; then
  echo "%{F#ffff00} "
elif [ "$temp" -ge 75 ] && [ "$temp" -lt 90 ]; then
  echo "%{F#ff9933} "
elif [ "$temp" -ge 90 ]; then
  echo "%{F#ff3300} "
else
  echo " "
fi
