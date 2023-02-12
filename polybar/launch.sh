#!/usr/bin/env bash

# colors
export BACKGROUND_COL="#11111b"
export MODULE_BG_COL="#1e1e2e"
export MAUVE_COL="#cba6f7"
export GREEN_COL="#a6e3a1"

# prefix and suffix for rounded modules
export ROUNDED_PREFIX="%{T2}%{F${MODULE_BG_COL}}%{B${BACKGROUND_COL}}"
export ROUNDED_SUFFIX="%{T2}%{F${MODULE_BG_COL}}%{B${BACKGROUND_COL}}"

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
# polybar-msg cmd quit
# Otherwise you can use the nuclear option:
killall -q polybar

polybar fullwidth 2>&1 | tee -a /tmp/polybar1.log & disown
polybar date 2>&1 | tee -a /tmp/polybar2.log & disown
polybar top 2>&1 | tee -a /tmp/polybar3.log & disown
polybar bottom 2>&1 | tee -a /tmp/polybar4.log & disown
polybar controls 2>&1 | tee -a /tmp/polybar5.log & disown
polybar workspaces 2>&1 | tee -a /tmp/polybar6.log & disown
