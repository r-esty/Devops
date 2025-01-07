# Over The Wire: Bandit Level 8 → Level 9

## Level Goal

The password for the next level is stored in the file `data.txt` and is the only line of text that appears only once.

## Solution

### Step 1: Login to the level
Login to the game using:
```bash
ssh bandit8@bandit.labs.overthewire.org -p 2220
```

Password:
```
dfwvzFQi4mU0wfNbFOe9RoWskMLg7eEc
```

### Step 2: Locate and examine the file
First, verify the file exists:
```bash
ls
```

Output:
```
data.txt
```

### Step 3: Find the unique line
Use sort and uniq to find the single unique line:
```bash
sort data.txt | uniq -u
```

Output:
```
4CKMh1JI91bUIZZPXDqGanal4xvAg0JM
```

### Step 4: Exit
Exit the SSH session:
```bash
exit
```

## Key Learning Points

* Understanding pipeline commands in Linux
* Using `sort` and `uniq` together effectively
* Why sorting is necessary before using uniq
* Basic Linux commands: `ssh`, `ls`, `sort`, `uniq`

## Additional Notes

* The process works in two steps:
  * `sort` arranges lines alphabetically
  * `uniq -u` shows only lines that appear once
* Important uniq options:
  * `-u`: show only unique lines
  * `-d`: show only duplicate lines
  * `-c`: count occurrences
* `uniq` only works properly on sorted input

## Commands Used
* `ssh` - OpenSSH SSH client (remote login program)
* `ls` - List directory contents
* `sort` - Sort lines of text files
* `uniq` - Report or omit repeated lines
* `|` - Pipeline operator

