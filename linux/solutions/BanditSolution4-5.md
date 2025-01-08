# Over The Wire: Bandit Level 4 → Level 5

## Level Goal

The password for the next level is stored in the only human-readable file in the `inhere` directory.

## Solution

### Step 1: Login to the level
Login to the game using:
```bash
ssh bandit4@bandit.labs.overthewire.org -p 2220
```

Password:
```
4oQYVPkxZOOEOO5pTW81FB8j8lxXGUQw
```

### Step 2: Navigate to directory
List and change to the inhere directory:
```bash
ls
cd inhere
```

### Step 3: Investigate files
List all files with details:
```bash
ls -la
```

Output:
```
total 48
drwxr-xr-x 2 root    root    4096 Sep 19 07:08 .
drwxr-xr-x 3 root    root    4096 Sep 19 07:08 ..
-rw-r----- 1 bandit5 bandit4   33 Sep 19 07:08 -file00
-rw-r----- 1 bandit5 bandit4   33 Sep 19 07:08 -file01
-rw-r----- 1 bandit5 bandit4   33 Sep 19 07:08 -file02
-rw-r----- 1 bandit5 bandit4   33 Sep 19 07:08 -file03
-rw-r----- 1 bandit5 bandit4   33 Sep 19 07:08 -file04
-rw-r----- 1 bandit5 bandit4   33 Sep 19 07:08 -file05
-rw-r----- 1 bandit5 bandit4   33 Sep 19 07:08 -file06
-rw-r----- 1 bandit5 bandit4   33 Sep 19 07:08 -file07
-rw-r----- 1 bandit5 bandit4   33 Sep 19 07:08 -file08
-rw-r----- 1 bandit5 bandit4   33 Sep 19 07:08 -file09
```

### Step 4: Check file types
Use the file command to determine file types:
```bash
file ./*
```

Output:
```
./-file00: data
./-file01: data
./-file02: data
./-file03: data
./-file04: data
./-file05: data
./-file06: data
./-file07: ASCII text
./-file08: data
./-file09: data
```

### Step 5: Read the ASCII text file
View contents of the human-readable file:
```bash
cat ./-file07
```

Output:
```
4oQYVPkxZOOEOO5pTW81FB8j8lxXGUQw
```

### Step 6: Exit
Exit the SSH session:
```bash
exit
```

## Key Learning Points

* Using the `file` command to determine file types
* Working with files that have special characters in names
* Understanding file permissions and ownership
* Basic Linux commands: `ssh`, `ls`, `cd`, `file`, `cat`

## Additional Notes

* The `file` command can identify file types regardless of extension
* Using `./*` allows you to work with files that start with special characters
* The `-la` flags for `ls` show:
  * `-l`: detailed listing format
  * `-a`: all files, including hidden ones

## Commands Used
* `ssh` - OpenSSH SSH client (remote login program)
* `ls` - List directory contents
* `cd` - Change directory
* `file` - Determine file type
* `cat` - Concatenate files and print on the standard output

## References
* [Over The Wire: Bandit Level 4 → Level 5](https://overthewire.org/wargames/bandit/bandit5.html)
* [Linux File Command](https://man7.org/linux/man-pages/man1/file.1.html)
