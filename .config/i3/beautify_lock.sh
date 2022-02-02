#!/bin/bash

rectangles=" "

SR=$(xrandr --query | grep ' connected' | grep -o '[0-9][0-9]*x[0-9][0-9]*[^ ]*')
for RES in $SR; do
  SRA=(${RES//[x+]/ })
  CX=$((${SRA[2]} + 25))
  CY=$((${SRA[1]} - 80))
  rectangles+="rectangle $CX,$CY $((CX+300)),$((CY-80)) "
done

TMPBG=/tmp/screen.png
scrot $TMPBG && convert $TMPBG -scale 5% -scale 2000% -draw "fill black fill-opacity 0.4 $rectangles" $TMPBG

pkill -u "$USER" -USR1 dunst

i3lock \
  -n \
  -i $TMPBG \
  --time-pos="x+110:h-120" --date-pos="tx+24:ty+25" \
  --clock --indicator --date-str "Type password to unlock..." \
  --inside-color=00000000 --ring-color=ffffffff --line-uses-inside \
  --keyhl-color=d23c3dff --bshl-color=d23c3dff --separator-color=00000000 \
  --insidever-color=ffffffff --insidewrong-color=ff0000ff \
  --ringver-color=ffffffff --ringwrong-color=ffffffff --ind-pos="x+290:h-120" \
  --radius=20 --ring-width=3 --verif-text="" --wrong-text="" --noinput-text="" \
  --time-color=ffffffff --date-color=ffffffff

pkill -u "$USER" -USR2 dunst

rm $TMPBG
