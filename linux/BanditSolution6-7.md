# Over The Wire: Bandit Level 6 → Level 7

## Level Goal

The password for the next level is stored somewhere on the server and has the following properties:
- owned by user bandit7
- owned by group bandit6
- 33 bytes in size

## Solution

### Step 1: Login to the level
Login to the game using:
```bash
ssh bandit6@bandit.labs.overthewire.org -p 2220
```

Password:
```
HWasnPhtq9AVKe0dmk45nxy20cvUa6EG
```

### Step 2: Find the file
Use find command to search for the file with specific properties:
```bash
find / -user bandit7 -group bandit6 -size 33c 2>/dev/null
```

Note: `2>/dev/null` redirects error messages to null device, making output cleaner

Output:
```
/var/lib/dpkg/info/bandit7.password
```

### Step 3: Read the file
Display the contents of the found file:
```bash
cat /var/lib/dpkg/info/bandit7.password
```

Output:
```
morbNTDkSW6jIlUc0ymOdMaLnOlFVAaj
```

### Step 4: Exit
Exit the SSH session:
```bash
exit
```

## Key Learning Points

* Using `find` command with user and group ownership criteria
* Handling permission errors with redirection
* Understanding file ownership and permissions
* Basic Linux commands: `ssh`, `find`, `cat`

## Additional Notes

* The `find` command options used:
  * `-user`: specify file owner
  * `-group`: specify file group
  * `-size`: specify file size (c for bytes)
* Error redirection (`2>/dev/null`):
  * `2>` redirects stderr
  * `/dev/null` is a special file that discards all data
* File ownership in Linux consists of both user and group ownership

## Commands Used
* `ssh` - OpenSSH SSH client (remote login program)
* `find` - Search for files in a directory hierarchy
* `cat` - Concatenate files and print on the standard output
* `2>/dev/null` - Redirect error messages to null device
