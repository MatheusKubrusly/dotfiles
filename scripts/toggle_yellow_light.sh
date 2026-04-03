#!/bin/bash

# Check if gammastep is already running
if pgrep -x "gammastep" > /dev/null
then
    # If it is, kill it to restore normal colors
    pkill gammastep
    notify-send "Screen Temperature" "Blue Light Filter: OFF" -i display
else
    # If it's not, start it with a warm 3500K (Yellow Mode)
    # The "&" at the end is crucial so it runs in the background
    gammastep -O 3000 &
    notify-send "Screen Temperature" "Yellow Mode: ON (3000K)" -i display
fi
