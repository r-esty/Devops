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

## Level 2
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
Explanation
This script demonstrates the use of a basic for loop in Bash. Here's how it works:

The {1..10} syntax creates a sequence from 1 to 10
The for loop iterates through each number in this sequence
On each iteration, the current number is stored in the variable i
The echo $i command prints the current value of i
The loop continues until all numbers have been printed
