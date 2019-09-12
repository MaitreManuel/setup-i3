#!/bin/sh

if [ "$(pgrep -x spotify)" ]; then
  artist=$(playerctl metadata artist)
  title=$(playerctl metadata title)
  status=$(playerctl status)

  if [ "$status" = Playing ]; then
    icon=
  else
    icon=
  fi

  echo $icon '' $title - $artist
else
  echo "Bug"
fi
