#!/bin/bash

# Go to the correct directory
cd linux/solutions/

# Rename the files using a loop
for f in BanditSolution*.md; do
  mv "$f" "../../$f"  # Move the file to the parent directory (Devops)
done

# Generate the README.md
echo "# OverTheWire Bandit Solutions" > ../../README.md
echo "## Table of Contents" >> ../../README.md

# Loop through the files and add them to the Table of Contents
for f in ../../BanditSolution*.md; do
  filename=$(basename "$f" .md)
  echo "- [Level ${filename//BanditSolution/}](./$filename)" >> ../../README.md
done

echo "Renaming complete and README.md generated!"

