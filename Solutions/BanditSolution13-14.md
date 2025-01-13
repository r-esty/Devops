# Over The Wire: Bandit Level 13 → Level 14

## Level Goal
Log into bandit14 using the private SSH key found in `/home/bandit13`.

## Solution

### Step 1: Login
```bash
ssh bandit13@bandit.labs.overthewire.org -p 2220
```

### Step 2: Use SSH Key
```bash
ssh -i sshkey.private bandit14@localhost -p 2220
```

## Key Commands
* `ssh -i`: SSH with identity file (private key)
* `ls`: List directory contents

## Notes
* Private key authentication bypasses password requirement
* Key must have correct permissions (readable only by owner)
* Use localhost to connect to same machine
