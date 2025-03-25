# Mission: Write a script that accepts a filename as an argument and prints the number of lines in that file.  
# If no filename is provided, display a message saying 'No file provided'.


#!/bin/bash

if [ -z "$1" ]
then
echo "No file provided"
    exit 1
fi

if [ ! -f "$1" ]
then
    echo "file not found"
    exit 1
fi

lines=$(wc -l < "$1")
echo "The file '$1' has $lines lines."
