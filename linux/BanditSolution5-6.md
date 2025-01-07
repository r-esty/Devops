# Over The Wire: Bandit Level 5 → Level 6

## Level Goal

The password for the next level is stored in a file somewhere under the `inhere` directory and has the following properties:
- human-readable
- 1033 bytes in size
- not executable

## Solution

### Step 1: Login to the level
Login to the game using:
```bash
ssh bandit5@bandit.labs.overthewire.org -p 2220
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

### Step 3: List contents
View the contents of the directory:
```bash
ls -la
```

Output shows multiple subdirectories (`maybehere00` through `maybehere19`).

### Step 4: Use find command
Search for the file meeting the specific criteria:
```bash
find . -type f -size 1033c ! -executable -exec file {} + | grep ASCII
```

This command:
- `.` searches in current directory
- `-type f` looks for regular files
- `-size 1033c` specifies exactly 1033 bytes
- `! -executable` excludes executable files
- `-exec file {} +` checks file types
- `grep ASCII` filters for human-readable files

Output shows the file containing the password:
```
HWasnPhtq9AVKe0dmk45nxy20cvUa6EG
```

### Step 5: Exit
Exit the SSH session:
```bash
exit
```

## Key Learning Points

* Using the `find` command with multiple criteria
* Understanding file properties (size, type, permissions)
* Combining commands with pipes and grep
* Basic Linux commands: `ssh`, `ls`, `cd`, `find`, `file`, `grep`

## Additional Notes

* The `find` command is powerful for locating files based on various criteria:
  * `-type f`: regular files
  * `-size`: exact size (use 'c' for bytes)
  * `! -executable`: not executable
  * `-exec`: execute command on found files
* Using `grep` to filter output
* Understanding file properties is crucial for system administration

## Commands Used
* `ssh` - OpenSSH SSH client (remote login program)
* `ls` - List directory contents
* `cd` - Change directory
* `find` - Search for files in a directory hierarchy
* `file` - Determine file type
* `grep` - Print lines matching a pattern

