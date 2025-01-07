# Over The Wire: Bandit Level 10 → Level 11

## Level Goal
The password is stored in data.txt, which contains base64 encoded data.

## Solution

### Step 1: Login
```bash
ssh bandit10@bandit.labs.overthewire.org -p 2220
```

### Step 2: Decode Base64
```bash
base64 -d data.txt
```
Password for next level:
```
dtR173fZKb0RRsDFSGsg2RWnpNVj3qRr
```

## Key Commands
* `base64 -d`: Decode base64 encoded data

## Notes
* Base64 is a binary-to-text encoding scheme
* Commonly used for sending binary data through text-based systems
* The -d flag decodes base64 content


