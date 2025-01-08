# Over The Wire: Bandit Level 11 → Level 12

## Level Goal
The password is stored in data.txt, where all lowercase (a-z) and uppercase (A-Z) letters have been rotated by 13 positions (ROT13).

## Solution

### Step 1: Login
```bash
ssh bandit11@bandit.labs.overthewire.org -p 2220
```

### Step 2: Decode ROT13
```bash
cat data.txt | tr 'A-Za-z' 'N-ZA-Mn-za-m'
```
Password for next level:
```
7x16WNeHIi5YkIhWsfFIqoognUTyj9Q4
```

## Key Commands
* `tr`: Translate characters
* ROT13 translation: `tr 'A-Za-z' 'N-ZA-Mn-za-m'`

## Notes
* ROT13 is a simple substitution cipher
* Each letter is replaced by the letter 13 positions after it
* ROT13 is its own inverse - applying it twice returns the original text
