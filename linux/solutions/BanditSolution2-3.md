# Over The Wire: Bandit Level 2 → Level 3

## Level Goal

The password for the next level is stored in a file called `spaces in this filename` located in the home directory.

## Solution

### Step 1: Login to the level
Login to the game using:
```bash
ssh bandit2@bandit.labs.overthewire.org -p 2220
```

Password:
```
MNk8KNH3Usiio41PRUEoDFPqfxLPlSmx
```

### Step 2: Locate the file
List files in the current directory:
```bash
ls
```

Output:
```
spaces in this filename
```

### Step 3: Read the file content
Since the file name contains spaces, we need to handle it properly using quotes:
```bash
cat "spaces in this filename"
```

Output:
```
MNk8KNH3Usiio41PRUEoDFPqfxLPlSmx
```

### Step 4: Exit
Exit the SSH session:
```bash
exit
```

## Key Learning Points

* How to handle filenames containing spaces in Linux
* Using quotes to escape special characters in filenames
* Basic Linux commands: `ssh`, `ls`, `cat`
* Importance of proper filename handling in shell commands

## Additional Notes

* In Linux/Unix, spaces in filenames require special handling
* You can use either:
  * Double quotes: `"spaces in this filename"`
  * Single quotes: `'spaces in this filename'`
  * Escape characters: `spaces\ in\ this\ filename`

## Commands Used
* `ssh` - OpenSSH SSH client (remote login program)
* `ls` - List directory contents
* `cat` - Concatenate files and print on the standard output

## References
* [Over The Wire: Bandit Level 2 → Level 3](https://overthewire.org/wargames/bandit/bandit3.html)
* [Linux Command Line Basics](https://www.gnu.org/software/bash/manual/html_node/Basic-Shell-Features.html)
