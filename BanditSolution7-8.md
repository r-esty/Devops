# Over The Wire: Bandit Level 7 → Level 8

## Level Goal

The password for the next level is stored in the file `data.txt` next to the word "millionth".

## Solution

### Step 1: Login to the level
Login to the game using:
```bash
ssh bandit7@bandit.labs.overthewire.org -p 2220
```

Password:
```
morbNTDkSW6jIlUc0ymOdMaLnOlFVAaj
```

### Step 2: Locate and view the file
First, verify the file exists:
```bash
ls
```

Output:
```
data.txt
```

### Step 3: Search for the password
Use grep to find the line containing "millionth":
```bash
grep "millionth" data.txt
```

Output:
```
millionth	dfwvzFQi4mU0wfNbFOe9RoWskMLg7eEc
```

### Step 4: Exit
Exit the SSH session:
```bash
exit
```

## Key Learning Points

* Using `grep` to search for text within files
* Understanding basic text searching in Linux
* Working with large text files efficiently
* Basic Linux commands: `ssh`, `ls`, `grep`

## Additional Notes

* The `grep` command is powerful for text searching:
  * Searches for patterns in text files
  * Can be used with regular expressions
  * Supports various output formats
* Alternative approaches could include:
  * `cat data.txt | grep "millionth"`
  * `grep -w "millionth" data.txt` for whole word matching

## Commands Used
* `ssh` - OpenSSH SSH client (remote login program)
* `ls` - List directory contents
* `grep` - Print lines that match patterns

