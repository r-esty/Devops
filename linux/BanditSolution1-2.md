# Over The Wire: Bandit Level 1 → Level 2

## Level Goal

The password for the next level is stored in a file called `-` located in the home directory.

## Solution

### Step 1: Login to the level
Login to the game using:
```bash
ssh bandit1@bandit.labs.overthewire.org -p 2220
```

Password:
```
263JGJPfgU6LtdEvgfWU1XP5yac29mFx
```

### Step 2: Locate the file
List files in the current directory:
```bash
ls
```

Output:
```
-
```

### Step 3: Read the file content
Since the file is named `-`, we need to use input redirection to read it:
```bash
cat <-
```

Output:
```
263JGJPfgU6LtdEvgfWU1XP5yac29mFx
```

### Step 4: Exit
Exit the SSH session:
```bash
exit
```

## Key Learning Points

* How to handle files with special characters in their names
* Understanding input redirection in Linux
* Basic Linux commands: `ssh`, `ls`, `cat`
* Using `<` for input redirection

## Additional Notes

* The dash (`-`) in Unix/Linux is often used to signify standard input/output
* To read files named with special characters, you can use various methods:
  * `cat <-`
  * `cat ./-`
  * `cat $(pwd)/-`

## Commands Used
* `ssh` - OpenSSH SSH client (remote login program)
* `ls` - List directory contents
* `cat` - Concatenate files and print on the standard output


