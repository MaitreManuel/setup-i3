#!/bin/sh

main () {
  hdmi_plug=$(xrandr --current | grep '^HDMI-1 connected')
  typec_plug=$(xrandr --current | grep '^DP-1 connected')

  if [ "$hdmi_plug" = "" ] && [ "$typec_plug" = "" ]; then
    echo "hdmi and typec plug off"
    xrandr --auto
  elif [ "$hdmi_plug" != "" ]  && [ "$typec_plug" = "" ]; then
    echo "hdmi plug on"
    xrandr --output HDMI-1 --above eDP-1 --auto
    i3-msg "workspace 10, move workspace to output HDMI-1"
  elif [ "$hdmi_plug" = "" ]  && [ "$typec_plug" != "" ]; then
    echo "typec plug on"
    xrandr --output DP-1 --above eDP-1 --auto
    i3-msg "workspace 9, move workspace to output DP-1"
  else
    echo "something goes wrong"
    xrandr --auto
  fi

  echo 'end'
  restart
}

main "$@"
