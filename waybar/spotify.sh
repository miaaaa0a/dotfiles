#!/bin/zsh

zscroll -e t \
-M "playerctl -p spotify status" \
-m "Paused" "-b ' ' --scroll false" \
-m "Playing" "-b ' ' " \
-l 30 \
-u t \
'echo "$(playerctl -p spotify metadata artist) - $(playerctl -p spotify metadata title) [$(playerctl -p spotify metadata album)]" | sed "s/&/&amp/g"'
