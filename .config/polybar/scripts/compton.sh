#!/bin/sh

case "$1" in
    --toggle)
        if [ "$(pgrep -x compton)" ]; then
            pkill compton
        else
            compton -b --config ~/.config/compton.conf
        fi
        ;;
    *)
        if [ "$(pgrep -x compton)" ]; then
            echo "On"
        else
            echo "Off"
        fi
        ;;
esac
