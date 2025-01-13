# OverTheWire Bandit - Level 0 Solution

The **Bandit** wargame by OverTheWire teaches basic Linux commands and security. This guide solves **Level 0**, where the goal is to retrieve the password for the next level stored in a file named `readme`.

---

## Objective
Retrieve the password for Bandit Level 1 by finding and reading the `readme` file on the Bandit Level 0 server.

---

## Steps

### Step 1: Connect to the Server
Use **SSH** to connect to the Bandit Level 0 server:
- **Host**: `bandit.labs.overthewire.org`
- **Username**: `bandit0`
- **Port**: `2220`

Run:
```bash
ssh bandit0@bandit.labs.overthewire.org -p 2220
```

When prompted for a password, enter:
```
bandit0
```

---

### Step 2: List the Files
List the files in the current directory:
```bash
ls
```

Output:
```
readme
```

---

### Step 3: Read the File
Display the contents of the `readme` file:
```bash
cat readme
```

Output:
```
The password you are looking for is: ZjLjTmM6FvvyRnrb2rfNWOZOTa6ip5If
```

---

### Step 4: Save the Password
Password for **Level 1**:
```
ZjLjTmM6FvvyRnrb2rfNWOZOTa6ip5If
```

Use this password to log into the next level.

---

## Key Learnings
### 1. **Using SSH**
SSH allows secure remote access to servers and is a key skill for developers and system administrators.

### 2. **Basic Linux Commands**
- `ls`: Lists files in the directory.
- `cat`: Displays file contents.

---

## Next Steps
Log into Level 1:
```bash
ssh bandit1@bandit.labs.overthewire.org -p 2220
```

When prompted for a password, use:
```
ZjLjTmM6FvvyRnrb2rfNWOZOTa6ip5If
```

---

Happy hacking!
