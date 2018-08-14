#!/bin/sh

B='#00000000'  # blank
C='#ffffff22'  # clear ish
D='#ff00ffcc'  # default
T='#ee00eeee'  # text
W='#880000bb'  # wrong
V='#bb00bbbb'  # verifying

~/i3lock-color/x86_64-pc-linux-gnu/i3lock \
--insidevercolor=$C   \
--ringvercolor=$V     \
\
--insidewrongcolor=00000000 \
--ringwrongcolor=bd2c40ee   \
\
--insidecolor=$B      \
--ringcolor=$D        \
--linecolor=$B        \
--separatorcolor=$D   \
\
--verifcolor=ffb52aee        \
--wrongcolor=bd2c40ee       \
--timecolor=ffb52aee        \
--datecolor=ffb52aee        \
--layoutcolor=$T      \
--keyhlcolor=$W       \
--bshlcolor=$W        \
\
--screen 1              \
--blur 5                \
--clock                 \
--indicator             \
--timestr="%H:%M:%S"    \
--datestr="%A %e %B %Y" \
--keylayout 2           \
\
--radius=120                              \
--ringcolor=ffb52aee                      \
--ring-width=4                            \
--show-failed-attempts                    \
--veriftext="Verification..."             \
--wrongtext="Nope !"                      \
