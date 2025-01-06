# OverTheWire Bandit - Level 0 Solution 🎮🔐  

The **Bandit** wargame by OverTheWire is a fun way to learn the basics of Linux commands and security. This guide will walk you through solving **Level 0**, where the goal is to retrieve the password for the next level stored in a file named `readme`.  

---

## 🎯 Objective  
Retrieve the password for Bandit Level 1 by finding and reading the `readme` file located on the Bandit Level 0 server.

---

## 🛠️ Steps to Solve  

### Step 1: Connect to the Server 🌐  
To connect to the Bandit Level 0 server, use **SSH**. The server details are:  
- **Host**: `bandit.labs.overthewire.org`  
- **Username**: `bandit0`  
- **Port**: `2220`  

Run this command in your terminal:  
```bash
ssh bandit0@bandit.labs.overthewire.org -p 2220
You will be prompted for a password. For Level 0, the password is provided in the challenge description:

Copy code
bandit0
Once connected, you will see a welcome message confirming your login.

Step 2: List the Files 📂
Once logged in, list the files in the current directory using the ls command:

bash
Copy code
ls
This will display the following output:

Copy code
readme
Step 3: Read the File Contents 📖
Next, read the contents of the readme file using the cat command:

bash
Copy code
cat readme
The output will display:

vbnet
Copy code
Congratulations on your first steps into the bandit game!!
Please make sure you have read the rules at https://overthewire.org/rules/
If you are following a course, workshop, walkthrough, or other educational activity,
please inform the instructor about the rules as well and encourage them to
contribute to the OverTheWire community so we can keep these games free!
The password you are looking for is: ZjLjTmM6FvvyRnrb2rfNWOZOTa6ip5If
Step 4: Save the Password 🔑
The password for Level 1 is:

Copy code
ZjLjTmM6FvvyRnrb2rfNWOZOTa6ip5If
Keep this password safe, as you’ll need it to log in to the next level.

💡 Key Learnings
1. Using SSH for Remote Access 🌍
SSH (Secure Shell) allows secure remote access to servers. It’s an essential skill for developers, system administrators, and security professionals.

2. Basic Linux Commands 🖥️
ls: Lists files in the current directory.
cat: Displays the contents of a file.
These commands are foundational for navigating and interacting with Linux systems.

3. File Operations in Unix 🧾
Knowing how to locate and read files using simple commands is essential for troubleshooting, configuring systems, or managing servers.

🚀 Next Steps
Now that you’ve retrieved the password for Level 1, proceed by logging into the next level:

bash
Copy code
ssh bandit1@bandit.labs.overthewire.org -p 2220
When prompted for a password, use:

Copy code
ZjLjTmM6FvvyRnrb2rfNWOZOTa6ip5If
📜 Final Notes
This challenge helps reinforce key Linux skills that are essential in real-world roles, including DevOps, IT operations, and cybersecurity. Keep practising, and you’ll soon tackle more advanced challenges!

