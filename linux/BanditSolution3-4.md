# Over The Wire: Bandit Level 3 → Level 4

## Level Goal

The password for the next level is stored in a hidden file in the `inhere` directory.

## Solution

### Step 1: Login to the level
Login to the game using:
```bash
ssh bandit3@bandit.labs.overthewire.org -p 2220
```

Password:
```
2WmrDFRmJIq3IPxneAaMGhap0pFhF3NJ
```

### Step 2: Navigate and locate files
First, list the directory contents:
```bash
ls
```

Output:
```
inhere
```

Change to the inhere directory:
```bash
cd inhere
```

List hidden files:
```bash
ls -a
```

### Step 3: Read the hidden file
View the contents of the hidden file:
```bash
cat .hidden
```

Output:
```
2WmrDFRmJIq3IPxneAaMGhap0pFhF3NJ
```

### Step 4: Exit
Exit the SSH session:
```bash
exit
```

## Key Learning Points

* How to work with hidden files in Linux
* Using `ls -a` to show all files, including hidden ones
* Directory navigation with `cd`
* Basic Linux commands: `ssh`, `ls`, `cd`, `cat`

## Additional Notes

* In Unix-like systems, files beginning with a dot (.) are hidden by default
* Hidden files are commonly used for:
  * Configuration files
  * System files
  * Application settings
* The `-a` flag shows all files, including hidden ones

## Commands Used
* `ssh` - OpenSSH SSH client (remote login program)
* `ls` - List directory contents
* `cd` - Change directory
* `cat` - Concatenate files and print on the standard output

## References
* [Over The Wire: Bandit Level 3 → Level 4](https://overthewire.org/wargames/bandit/bandit4.html)
* [Linux Hidden Files](https://www.gnu.org/software/bash/manual/html_node/Dot-Files.html)
