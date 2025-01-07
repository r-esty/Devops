# Over The Wire: Bandit Level 16 → Level 17

## Level Goal
Find an SSL service running on localhost between ports 31000-32000 that will give credentials for the next level.

## Solution

### Step 1: Scan Ports
```bash
nmap localhost -p 31000-32000
```
Output shows several open ports including 31790

### Step 2: Connect to SSL Service
```bash
ncat --ssl localhost 31790
```
Enter current password:
```
kSkvUpMQ7lBYyCM4GBPvCvT1BfWRy0Dx
```

### Step 3: Save Private Key
1. Create key file:
```bash
vim sshkey16.private
```

2. Set permissions:
```bash
chmod 400 sshkey16.private
```

### Step 4: Access Next Level
```bash
ssh -i sshkey16.private bandit17@bandit.labs.overthewire.org -p 2220
```

## Key Commands
* `nmap`: Port scanning
* `ncat --ssl`: SSL connection
* `chmod 400`: Set read-only permissions
* `ssh -i`: SSH with identity file

## Notes
* Multiple open ports found
* Service returns RSA private key
* Key must have correct permissions
* Key used instead of password for next level
