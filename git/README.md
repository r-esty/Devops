# Git notes

## 1. Introduction to Git

Git is a distributed version control system that allows multiple developers to work on a project simultaneously. It helps keep track of changes, manage code versions, and collaborate efficiently.

## 2. Why is Git So Important?

- **Version Control**: Git helps manage changes to the codebase, track revisions, and revert to previous versions when needed.
- **Collaboration**: It allows multiple developers to work on the same project without conflicting changes.
- **Branching and Merging**: Git makes it easy to experiment with new features by creating branches and then merging them into the main project.

## 3. Get Started on Git

Install Git on your computer from the official Git website: https://git-scm.com/

Configure your name and email:
```bash
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"
```

## 4. Creating a Git Repository & Linking It Locally

Initialize a new repository:
```bash
git init
```

Link your local repository to a remote repository:
```bash
git remote add origin <repository_URL>
```

## 5. The README Markdown File (README.md)

The `README.md` file provides information about the project. Example:
```markdown
# Project Name
Description of the project.

## Installation
Steps to install and run the project.
```

## 6. Git Workflow

1. **Clone** the repository:
```bash
git clone <repository_URL>
```

2. **Make changes** in your local files.

3. **Add changes** to the staging area:
```bash
git add <file_name>
```

4. **Commit** changes to the local repository:
```bash
git commit -m "Your commit message"
```

5. **Push** changes to the remote repository:
```bash
git push origin <branch_name>
```

## 7. Commits

A commit in Git is a snapshot of your files at a given time.

To commit changes:
```bash
git commit -m "Commit message"
```
Each commit should have a meaningful message explaining what was changed.

## 8. Branching

Create a branch:
```bash
git branch <branch_name>
```

Switch between branches:
```bash
git checkout <branch_name>
```

Create and switch to a new branch in one command:
```bash
git checkout -b <branch_name>
```

## 9. Pull Requests

Pull requests (PRs) are used in GitHub to propose changes to a project:
- Push your branch to the remote repository
- Open a pull request to merge your changes into the main branch

## 10. Merge Conflicts

Merge conflicts occur when two branches have conflicting changes in the same part of the code.

To resolve a merge conflict:
1. Git marks the conflict in the file
2. Manually edit the file to resolve the conflict
3. Add the resolved file and commit the change

## 11. Rebasing and Force Pushing

Rebase to apply changes on top of the latest changes:
```bash
git rebase <branch_name>
```

Force push to overwrite history:
```bash
git push --force
```

## 12. Squashing Commits

Squash commits to combine multiple commits into a single commit:
```bash
git rebase -i <commit_id>
```
Choose `squash` for the commits you want to combine.

## 13. .gitignore Files

A `.gitignore` file tells Git which files or directories should not be tracked.

Example `.gitignore`:
```
node_modules/
*.log
.env
```
