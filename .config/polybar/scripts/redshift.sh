#!/bin/sh

if [ "$(pgrep -x redshift)" ]; then
    temp=$(redshift -p | grep temp | cut -d ":" -f 2 | tr -dc "[:digit:]")

    if [ -z "$temp" ]; then
        echo "%{F#0066ff}"
    elif [ "$temp" -ge 5000 ]; then
        echo "%{F#00cc00}"
    elif [ "$temp" -ge 4000 ]; then
        echo "%{F#ff9933}"
    else
        echo "%{F#ff3300}"
    fi
fi
