#!/bin/sh

main () {
  dp1_plug=$(xrandr --current | grep '^DP-1 connected')
  dp2_plug=$(xrandr --current | grep '^DP-2 connected')
  dp3_plug=$(xrandr --current | grep '^DP-3 connected')

  if [ "$dp1_plug" != "" ] && [ "$dp3_plug" != "" ]; then
    echo "DP1 & DP3 plug on"
    xrandr --output DP-1 --auto --left-of DP-3 --output DP-3 --auto --above eDP-1 --output eDP-1 --auto
  elif [ "$dp1_plug" = "" ] && [ "$dp3_plug" = "" ]; then
    echo "DP1 and DP3 plug off"
    xrandr --auto
  elif [ "$dp1_plug" != "" ]  && [ "$dp3_plug" = "" ]; then
    echo "DP1 plug on"
    xrandr --output DP-1 --auto --above eDP-1 --output eDP-1 --auto
  elif [ "$dp1_plug" = "" ]  && [ "$dp3_plug" != "" ]; then
    echo "DP3 plug on"
    xrandr --output DP-3 --auto --above eDP-1 --output eDP-1 --auto
  else
    echo "something went wrong"
    xrandr --auto
  fi

  echo 'end'
}

main "@"
