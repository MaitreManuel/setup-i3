#!/bin/sh

speed=$(sensors | grep 'Processor Fan' | cut -d " " -f 3)

if [ "$speed" != "" ]; then
    speed_round=$(echo "scale=1;$speed" | bc -l )
    echo "$speed_round"
else
   echo "#"
fi
