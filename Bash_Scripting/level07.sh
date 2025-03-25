# Mission: Write a script that sorts all .txt files in a directory by their size,  
# from smallest to largest, and displays the sorted list.


#!/bin/bash

mkdir -p Size
touch Size/a.txt Size/b.txt Size/c.txt
ls -lSr Size/*.txt