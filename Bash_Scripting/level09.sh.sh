#!/bin/bash

DIRECTORY="Arena"
LOG_FILE="change_log.txt"

# Ensure the directory exists
mkdir -p "$DIRECTORY"

echo "Monitoring directory: $DIRECTORY"
echo "Logging changes to: $LOG_FILE"

# Start monitoring
inotifywait -m -e create -e modify -e delete --format "%T %w%f %e" --timefmt "%Y-%m-%d %H:%M:%S" "$DIRECTORY" >> "$LOG_FILE"
