#!/usr/bin/env bash

# colors
export BACKGROUND_COL="#11111b"
export MODULE_BG_COL="#1e1e2e"
export MAUVE_COL="#cba6f7"
export GREEN_COL="#a6e3a1"

# suffix for rounded modules
export ROUNDED_PREFIX="%{T2}%{F${MODULE_BG_COL}}%{B${BACKGROUND_COL}}"

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
# killall -q polybar

polybar
