# Over The Wire: Bandit Level 9 → Level 10

## Level Goal

The password for the next level is stored in the file `data.txt` in one of the few human-readable strings, preceded by several '=' characters.

## Solution

### Step 1: Login to the level
Login to the game using:
```bash
ssh bandit9@bandit.labs.overthewire.org -p 2220
```

Password:
```
4CKMh1JI91bUIZZPXDqGanal4xvAg0JM
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

### Step 3: Extract and filter strings
Use strings command and grep to find the password:
```bash
strings data.txt | grep "==="
```

Output:
```
}========== the
3JprD========== passwordi
~fDV3========== is
D9========== FGUW5ilLVJrxX9kMYMmlN4MgbpfMiqey
```

### Step 4: Exit
Exit the SSH session:
```bash
exit
```

## Key Learning Points

* Using `strings` to extract readable text from binary files
* Combining `strings` with `grep` for filtering
* Understanding text processing in Linux
* Basic Linux commands: `ssh`, `ls`, `strings`, `grep`

## Additional Notes

* The `strings` command:
  * Extracts human-readable strings from binary files
  * By default, looks for sequences of 4 or more printable characters
  * Can be modified with `-n` option to change minimum length
* Common use cases for `strings`:
  * Examining binary files
  * Finding embedded text in executables
  * Forensic analysis

## Commands Used
* `ssh` - OpenSSH SSH client (remote login program)
* `ls` - List directory contents
* `strings` - Print the sequences of printable characters in files
* `grep` - Print lines matching a pattern
* `|` - Pipeline operator
