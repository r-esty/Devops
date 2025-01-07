# Over The Wire: Bandit Level 12 → Level 13

## Level Goal
The password is stored in data.txt, which is a hexdump of a file that has been repeatedly compressed.

## Solution

### Step 1: Login
```bash
ssh bandit12@bandit.labs.overthewire.org -p 2220
```

### Step 2: Setup Working Directory
```bash
mktemp -d                  # Create temp directory
cp ~/data.txt .           # Copy data file
```

### Step 3: Decompress Sequence
1. Convert hex dump to binary:
```bash
xxd -r data.txt > compr_file
```

2. Gzip decompression:
```bash
mv compr_file compr_file.gz
gunzip compr_file.gz
```

3. Bzip2 decompression:
```bash
mv compr_file compr_file.bz2
bunzip2 compr_file.bz2
```

4. Second gzip decompression:
```bash
mv compr_file compr_file.gz
gunzip compr_file.gz
```

5. First tar extraction:
```bash
mv compr_file compr_file.tar
tar -xf compr_file.tar
```

6. Second tar extraction:
```bash
mv data5.bin data5.bin.tar
tar -xf data5.bin.tar
```

7. Second bzip2 decompression:
```bash
mv data6.bin data6.bin.bz2
bunzip2 data6.bin.bz2
```

8. Third tar extraction:
```bash
mv data6.bin data6.bin.tar
tar -xf data6.bin.tar
```

9. Final gzip decompression:
```bash
mv data8.bin data8.bin.gz
gunzip data8.bin.gz
```

### Step 4: Get Password
```bash
cat data8.bin
```
Password for next level:
```
FO5dwFsc0cbaIiH0h8J2eUks2vdTDwAn
```

## Key Commands
* `xxd -r`: Reverse hex dump
* `file`: Determine file type
* `gunzip`: Decompress gzip files
* `bunzip2`: Decompress bzip2 files
* `tar -xf`: Extract tar archives

## Notes
* Multiple compression types used: gzip, bzip2, tar
* File must be properly renamed before decompression
* Use `file` command to identify compression type
