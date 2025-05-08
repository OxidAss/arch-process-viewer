#!/bin/bash

# Clear the console
clear

# Print banner
echo "█▀█ █▀█ █▀█ █▀▀ █▀▀ █▀ █▀   █░█ █ █▀▀ █░█░█ █▀▀ █▀█"
echo "█▀▀ █▀▄ █▄█ █▄▄ ██▄ ▄█ ▄█   ▀▄▀ █ ██▄ ▀▄▀▄▀ ██▄ █▀▄"
echo

# Prompt user
echo -n "Enter time(in minutes; WARNING! If you enter too big number, some processes will show not correctly): "
read MINUTES

# Validate input
if ! [[ "$MINUTES" =~ ^[0-9]+$ ]]; then
    echo "Please enter a valid number."
    exit 1
fi

# Current time in seconds since epoch
NOW=$(date +%s)

# Threshold time: current time minus entered minutes (converted to seconds)
THRESHOLD=$((NOW - MINUTES * 60))

# Print header
printf "%-10s %-8s %-20s %s\n" "PID" "USER" "START_TIME" "COMMAND"

# List processes and filter by start time
ps -eo pid,user,lstart,cmd --no-headers | while read -r PID USER START1 START2 START3 START4 START5 CMD; do
    PROC_START=$(date -d "$START1 $START2 $START3 $START4 $START5" +%s 2>/dev/null)
    if [ "$PROC_START" -ge "$THRESHOLD" ]; then
        printf "%-10s %-8s %-20s %s\n" "$PID" "$USER" "$START1 $START2 $START3 $START4 $START5" "$CMD"
    fi
done
