# Mission: Write a script that checks if a file named hero.txt exists in the Arena directory.  
# If it does, print "Hero found!"; otherwise, print "Hero missing!".


#!/bin/bash

if [ -f "hero.txt" ]
then
    echo "Hero found!"
else 
    echo "Hero missing!"
fi