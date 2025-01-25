# Linux notes

## 1. What is Linux? 🤔

Linux is an open-source operating system based on Unix. It's widely used for servers, embedded systems, and even desktops. It's known for its stability, security, and flexibility.

## 2. Getting Started

Linux is commonly used in both development and production environments. Setting up Linux can be done through various distributions (Ubuntu, Debian, Fedora, etc.), each with its own specific setup instructions.

## 3. Setting Up Linux/Ubuntu

- **Ubuntu** is one of the most popular Linux distributions, ideal for beginners.
- Installation can be done by downloading the ISO file from the official [Ubuntu website](https://ubuntu.com/download), creating a bootable USB drive, and following the on-screen instructions.

## 4. Introduction to the Terminal 😱

The terminal is a powerful command-line interface (CLI) that allows you to interact with your system by typing commands.

### Common Terminal Commands

- `ls`: List directory contents
- `pwd`: Print working directory (current folder)
- `cd <directory>`: Change directory

## 5. The MANUAL Page

The `man` command is used to access manual pages for any Linux command.

```bash
man <command>
```

## 6. Introduction to AWS ☁️

AWS (Amazon Web Services) provides cloud computing services. You can rent virtual machines (VMs) to practice Linux commands.

### Renting a Virtual Machine from AWS

To get started with AWS, create an account, and launch an EC2 instance (virtual machine). You can choose an Ubuntu-based instance for learning Linux.

## 7. Basic Commands

- `echo`: Display a line of text
- `grep`: Search for patterns in a file or input
- `cat`: Concatenate and display file content

## 8. The Shell and Binaries

The shell is an interface for running commands. Programs and binaries are files that execute commands when run.

## 9. Installing the ZSH Shell

ZSH (Z Shell) is an advanced shell that provides features like auto-completion and better user experience.

Install it with:

```bash
sudo apt install zsh
```

## 10. Customising ZSH with OhMyZsh

OhMyZsh is a framework for managing ZSH configurations.

Install it with:

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## 11. Linux File System Directories

Linux files are organized in a tree structure with several key directories:

- `/bin`: Essential binaries
- `/etc`: Configuration files
- `/home`: User directories
- `/root`: Root user directory
- `/var`: Variable files like logs

## 12. File Management

- `touch`: Create an empty file
- `cp`: Copy files
- `mv`: Move or rename files
- `rm`: Remove files

## 13. Directories

- `mkdir`: Create a directory
- `rmdir`: Remove an empty directory
- `rm -r`: Remove a directory and its contents recursively

## 14. VIM Text Editor

VIM is a text editor available on most Linux distributions. It can be used for editing configuration files and writing code.

### Basic Commands

- Press `i` to enter insert mode
- Press `Esc` to exit insert mode
- Type `:wq` to save and quit
- Type `:q!` to quit without saving

## 15. The sudo Command

`sudo` allows you to run commands with administrative (root) privileges. Always be cautious with `sudo` as it can modify system-critical files.

## 16. Understanding Users and Groups

Users are accounts on the system, and groups are collections of users.

- `useradd <username>`: Create a new user
- `groupadd <groupname>`: Create a new group
- `usermod -aG <groupname> <username>`: Add a user to a group

## 17. Introduction to File Permissions

Linux uses a permission system to control access to files and directories. Each file has three types of permissions:

- Read (r): View the contents
- Write (w): Modify the contents
- Execute (x): Run the file as a program

## 18. chmod Command

`chmod` is used to change file permissions:

- Symbolic: `chmod u+x <file>` (add execute permission for the user)
- Numeric: `chmod 755 <file>` (set permissions with numbers)

## 19. Standard Streams

- Standard Input (stdin): Input data (keyboard by default)
- Standard Output (stdout): Output data (screen by default)
- Standard Error (stderr): Error messages

## 20. Environment Variables

Environment variables are dynamic values that affect the way processes behave on a system.

- `$PATH`: A system variable that defines directories where executables are located
- Use `echo $VARIABLE_NAME` to print the value of a variable

## 21. Aliases - Command Shortcuts

Aliases allow you to create shortcuts for longer commands.

Example: `alias ll='ls -la'`

## 22. OverTheWire Bandit Game 🕹

OverTheWire is a series of games designed to teach Linux command-line skills:

- Level 0-4: Focus on basic commands and file navigation
- Level 5+: More advanced problems requiring deeper Linux knowledge

## 23. Linux CLI Shortcuts

- `Ctrl + C`: Kill a running command
- `Ctrl + Z`: Suspend the command
- `Ctrl + A`: Move the cursor to the beginning of the line
- `Ctrl + E`: Move the cursor to the end of the line
