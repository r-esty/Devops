# Bash Battle Arena 🎮  

## Table of Contents  
- [Overview](#overview)  
- [Level 1](#level-1-the-basics)  
- [Level 2](#level-2)  
- [Level 3](#level-3)  
- [Level 4](#level-4)  
- [Level 5](#level-5)  
- [Level 6](#level-6)  
- [Level 7](#level-7)  
- [Level 8](#level-8)  
- [Level 9](#level-9)  
- [Level 10](#level-10)  
- [Level 11](#level-11)  
- [Level 12](#level-12)  
- [Level 13](#level-13)  
- [Level 14](#level-14)  
- [Level 15](#level-15)  

---

## Overview  
The **Bash Battle Arena** is a fun and interactive command-line game designed to teach and improve Bash scripting skills. Each level presents a unique challenge, requiring players to write Bash scripts to solve problems ranging from simple file manipulations to complex system operations.  

### Objective  
The goal is to "defeat" each level by successfully completing the tasks using Bash scripts. The ultimate aim is to become a **Bash Master.**  

As part of my Bash learning journey, I have recorded the solutions for all 15 levels in this file, outlining the steps I took, the challenges I encountered, and how I resolved them. 

---

## Level 1: The Basics  
### Mission  
Create a directory named `Arena` and inside it, create three files: `warrior.txt`, `mage.txt`, and `archer.txt`. List the contents of the `Arena` directory.  

### Solution  
```bash
#!/bin/bash

mkdir Arena
cd Arena
touch warrior.txt mage.txt archer.txt
ls

```



### Explanation  
This script begins by creating a new directory called **Arena** using the `mkdir` command. It then navigates into the **Arena** directory using `cd`. After that, the `touch` command is used to create three empty text files: `warrior.txt`, `mage.txt`, and `archer.txt`. Finally, the `ls` command lists the contents of the **Arena** directory to verify that the files were successfully created.

## Level 2: Number Loop Challenge
### Mission
Write a script that prints numbers from 1 to 10 using a loop.

### Solution
```bash
#!/bin/bash
# Loop from 1 to 10
for i in {1..10}
do
  echo $i  # Print the current number
done

```

### Explanation
This script demonstrates the use of a basic for loop in Bash. The script starts by using the {1..10} syntax to create a sequence of numbers from 1 to 10. The for loop then iterates through each number in this sequence, storing the current number in the variable i. On each iteration, the echo $i command is used to print the current value. This process continues until all numbers from 1 to 10 have been printed to the console.

## Level 3: Hero Detection
### Mission
Create a script that checks if a file named `hero.txt` exists in the `Arena` directory and prints an appropriate message.

### Solution
```bash
#!/bin/bash
if [ -f "Arena/hero.txt" ]; then
 echo "Hero found!"
else
 echo "Hero missing!"
fi

```
### Explanation
This script utilizes conditional statements to check for file existence. The [ -f "Arena/hero.txt" ] test condition uses the -f flag to verify if a regular file exists at the specified path. If the file exists, the script outputs "Hero found!" using the echo command. Otherwise, if the file is not found, it outputs "Hero missing!". This demonstrates how to perform basic file system checks in Bash using if-else statements and test conditions.

## Level 4: File Manipulation
### Mission
Create a script that makes a backup of all text files from the `Arena` directory by copying them to a new `Backup` directory.

### Solution
```bash
#!/bin/bash
mkdir Backup
cp Arena/*.txt Backup/

```

### Explanation
This script performs a simple but essential backup operation. First, it creates a new directory called Backup using the mkdir command. Then, it uses the cp command with the wildcard pattern *.txt to copy all text files from the Arena directory into the newly created Backup directory. The wildcard *.txt matches any file that ends with the .txt extension, making this an efficient way to copy multiple files with a single command.
