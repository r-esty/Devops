# Over The Wire: Bandit Level 14 → Level 15

## Level Goal
Submit the current level's password to port 30000 on localhost to get the next password.

## Solution

### Step 1: Get Current Password
```bash
cat /etc/bandit_pass/bandit14
```
Output:
```
MU4VWeTyJk8ROof1qqmcBPaLh7lDCPvS
```

### Step 2: Submit to Service
```bash
nc localhost 30000
```
Enter the password when prompted:
```
MU4VWeTyJk8ROof1qqmcBPaLh7lDCPvS
```

Password for next level:
```
8xCjnmgoKbGLhHFAZlGE5Tmu4M2tKJQo
```

## Key Commands
* `nc`: NetCat utility for reading/writing network connections
* `cat`: Display file contents

## Notes
* Service runs on localhost port 30000
* Must provide current level's password
* Service returns next level's password upon success
