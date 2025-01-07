# Over The Wire: Bandit Level 15 → Level 16

## Level Goal
Submit the current level's password to localhost port 30001 using SSL encryption.

## Solution

### Step 1: Login
```bash
ssh bandit15@bandit.labs.overthewire.org -p 2220
```

### Step 2: Connect via SSL
```bash
openssl s_client -connect localhost:30001
```

### Step 3: Submit Password
Enter current password when prompted:
```
8xCjnmgoKbGLhHFAZlGE5Tmu4M2tKJQo
```

Password for next level:
```
kSkvUpMQ7lBYyCM4GBPvCvT1BfWRy0Dx
```

## Key Commands
* `openssl s_client`: OpenSSL command line client
* `-connect host:port`: Establish SSL/TLS connection

## Notes
* Service requires SSL/TLS encryption
* Self-signed certificate warnings can be ignored
* Must submit current level's password
