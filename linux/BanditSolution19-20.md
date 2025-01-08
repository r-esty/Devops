# Over The Wire: Bandit Level 19 → Level 20

## Level Goal
Use a setuid binary that executes commands as another user to get the password.

## Solution

### Step 1: Login
```bash
ssh bandit19@bandit.labs.overthewire.org -p 2220
```

### Step 2: Examine Setuid Binary
```bash
ls -l
```
Output shows `bandit20-do` with setuid permissions:
```
-rwsr-x--- 1 bandit20 bandit19 14880 Sep 19 07:08 bandit20-do
```

### Step 3: Get Password
Use setuid binary to read password file:
```bash
./bandit20-do cat /etc/bandit_pass/bandit20
```
Password for next level:
```
0qXahG8ZjOVMN9Ghs7iOWsCfZyXOUbYO
```

## Key Commands
* `ls -l`: List files with permissions
* `./bandit20-do`: Execute setuid binary
* `cat`: Display file contents

## Notes
* Setuid bit allows execution as file owner
* Binary owned by bandit20 but executable by bandit19
* Can be used to access files readable only by bandit20

