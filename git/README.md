# Git Notes

## 1. Introduction to the Git Module
Git is a distributed version control system that helps you track changes in your code and collaborate with others. Version control means managing changes to code over time. Git allows developers to:

- Keep a history of changes made to a project
- Work on different versions of a project simultaneously (using branches)
- Revert changes when things go wrong

Git is powerful because it tracks all changes made in a project, including the ability to revert to earlier versions and share work with other developers.

### Why Git is Important:
- **Version Control**: Keeps track of all the changes made to the code, who made them, and when they were made. This is crucial for collaboration and avoiding mistakes.
- **Collaboration**: Git makes it easy for multiple developers to work on the same project without interfering with each other's work. You can merge changes from multiple contributors safely.
- **Branching**: You can work on new features, bug fixes, or experiments without affecting the main project. Git lets you create branches and then merge them back into the main project.

## 2. Why is Git So Important?
Git is crucial for managing software development because it allows:

- **Tracking Changes**: Easily see what has changed, and why, and revert to any previous version.
- **Collaboration**: It allows many developers to work on the same project without interfering with each other's code. Git keeps track of everyone's changes and integrates them seamlessly.
- **Branching**: You can create branches to work on new features or bug fixes without affecting the main (production) codebase.

## 3. Get Started on Git
Before you start using Git, you need to install it and configure it for your user.

### Installing Git:
1. Download and install Git from the official website [git-scm.com](https://git-scm.com/downloads).
2. Verify the installation by opening a terminal (or Git Bash) and running:
   ```bash
   git --version
   ```
   You should see something like git version 2.x.x.

### Configuring Git:
Set up your username and email so Git knows who you are:
```bash
git config --global user.name "Your Name"
git config --global user.email "youremail@example.com"
```
These details will be used when making commits (saving changes).

## 4. Creating a Git Repository & Linking It Locally
A repository (or "repo") is where Git stores the history of your project.

### To create a new Git repository:
- Navigate to your project directory in the terminal.
- Run the following command to initialize a Git repository:
  ```bash
  git init
  ```
  This creates a .git directory, where Git will track changes.

### Cloning an Existing Repository:
If you want to work on an existing project, you can clone a repository from a remote service like GitHub:
```bash
git clone https://github.com/username/repository.git
```

### Linking to a Remote Repository:
If you create a new repository locally and want to link it to a remote repository (e.g., GitHub), use:
```bash
git remote add origin https://github.com/username/repository.git
```

## 5. The README Markdown File (README.md)
The README.md file is the main documentation file for your project. It provides important information about the project, including what it does and how to use it.

### Example of a basic README.md:
```markdown
# Project Name

Description of the project.

## Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/username/repository.git
   ```

2. Install dependencies:
   ```bash
   npm install
   ```

## Usage
To run the project:
```bash
npm start
```

## Contributing
1. Fork the repository
2. Create a new branch (`git checkout -b new-feature`)
3. Commit your changes
4. Push to the branch (`git push origin new-feature`)
5. Create a pull request
```

## 6. DEMO: Git Workflow
The Git workflow is a set of steps you follow when working with Git. It typically involves:
1. **Cloning** the repository if you're working on an existing project:
   ```bash
   git clone <repository_URL>
   ```
2. Making changes to your files.
3. Staging the files to indicate which changes should be committed:
   ```bash
   git add <file_name>
   ```
4. Committing your changes:
   ```bash
   git commit -m "Your commit message"
   ```
5. Pushing the changes to a remote repository:
   ```bash
   git push origin <branch_name>
   ```

## 7. Commits
A commit is like a snapshot of your changes at a specific point in time. Each commit includes:
- A message describing what changed
- A reference to the previous commit

### Making a Commit:
```bash
git commit -m "Add new feature"
```

### Viewing Commit History:
```bash
git log
```

### Undoing a Commit:
```bash
git reset --soft HEAD~1
```
This removes the last commit but keeps your changes.

## 8. Branching
A branch allows you to develop features, bug fixes, or experiments without affecting the main project (often called main or master).

### Create a new branch:
```bash
git branch <branch_name>
```

### Switch to a branch:
```bash
git checkout <branch_name>
```

### Create and switch to a new branch in one command:
```bash
git checkout -b <branch_name>
```

### Merging Branches:
```bash
git checkout main
git merge <branch_name>
```

## 9. Pull Requests
A Pull Request (PR) is how you propose your changes to a project. It allows the repository owner or collaborators to review your changes before they are merged.

### Creating a Pull Request:
1. Push your branch to the remote repository:
   ```bash
   git push origin <branch_name>
   ```
2. Go to the repository's GitHub page and click "Create Pull Request."
3. Provide a title and description for your PR.
4. Submit the PR for review.

## 10. Merge Conflicts
A merge conflict happens when two branches modify the same part of a file. Git won't be able to merge the changes automatically, and you must resolve it manually.

### Resolving Merge Conflicts:
1. Git will mark the conflicting areas in the file, often using `<<<<<<<`, `=======`, and `>>>>>>>`.
2. Open the file and edit the conflicting code.
3. After resolving the conflict, stage the file:
   ```bash
   git add <file_name>
   ```
4. Commit the changes:
   ```bash
   git commit -m "Resolved merge conflict"
   ```

## 11. Rebasing and Force Pushing
Rebasing is an alternative to merging that applies your changes on top of the latest commits from the target branch.

### Rebasing:
```bash
git rebase <branch_name>
```

### Force Pushing:
```bash
git push --force
```
This overwrites the remote history and should be used carefully, especially on shared branches.

## 12. Squashing Commits
Squashing combines multiple commits into one, which makes your Git history cleaner and more readable.

### Squashing Commits:
1. Start an interactive rebase:
   ```bash
   git rebase -i <commit_id>
   ```
2. In the editor, change pick to squash for the commits you want to combine.
3. Save and close the editor to complete the rebase.

## 13. .gitignore Files
The .gitignore file tells Git which files to ignore (e.g., build files, temporary files, or sensitive data).

### Example of a .gitignore:
```bash
# Ignore node_modules folder
node_modules/

# Ignore log files
*.log

# Ignore environment variables
.env
```
You should commit a .gitignore to your repository to prevent unnecessary files from being tracked.
