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
