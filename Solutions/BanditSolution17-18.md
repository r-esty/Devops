# Over The Wire: Bandit Level 17 → Level 18

## Level Goal
Find the password for the next level by comparing two files in the home directory.

## Solution

### Step 1: Login with Key
```bash
ssh -i sshkey16.private bandit17@bandit.labs.overthewire.org -p 2220
```

### Step 2: Compare Files
```bash
diff passwords.old passwords.new
```
Output:
```
42c42
< ktfgBvpMzWKR5ENj26IbLGSblgUG9CzB
---
> x2gLTTjFwMOhQ8oWNbMN362QKxfRqGlO
```

Password for next level:
```
x2gLTTjFwMOhQ8oWNbMN362QKxfRqGlO
```

## Key Commands
* `diff`: Compare files line by line
* `ls`: List directory contents

## Notes
* First line shows old password
* Second line shows new password
* Line numbers indicate change at line 42
