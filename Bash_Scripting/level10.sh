#!/bin/bash

mkdir -p Arena_Boss

# Create 5 text files
for i in $(seq 1 5); do
    file="Arena_Boss/file$i.txt"
    touch "$file"

    # Generate a random number between 10 and 20
    lines=$((RANDOM % 11 + 10))

    # Add random words from the dictionary to the file
    for j in $(seq 1 $lines); do
       if (( RANDOM % 5 == 0 )); then  
    echo "Victory" >> "$file"  
fi  
echo "Line $j: $(shuf -n 1 /usr/share/dict/words)" >> "$file"

    done
done

# Sort files by size and display
echo "Files sorted by size:"
ls -S Arena_Boss

# Create archive directory for files containing "Victory"
mkdir -p Victory_Archive
for file in Arena_Boss/*.txt; do
    if grep -q "Victory" "$file"; then
        mv "$file" Victory_Archive/
        echo "Moved $file to Victory_Archive"
    fi
done
