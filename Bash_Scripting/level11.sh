#!/bin/bash

mkdir -p directory_name
DIR="directory_name"
THRESHOLD=50

DIR_SIZE=$(du -sm "$DIR" | awk '{print $1}')

if [ "$DIR_SIZE" -gt "$THRESHOLD" ]
then
    echo "Warning: $DIR has exceeded the limit of $THRESHOLD MB! (Current usage: $DIR_SIZE MB)"
else
    echo "$DIR is within the limit. (Current usage: $DIR_SIZE MB, Threshold: $THRESHOLD MB)"
fi
