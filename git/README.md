# Git Crash Course for Beginners

## What is Git?

Git is a distributed version control system that helps developers:
- Track code changes
- Collaborate on projects
- Manage different versions of code

## Getting Started

### Installation
1. Download Git from [git-scm.com](https://git-scm.com/)
2. Configure user settings:
```bash
git config --global user.name "Your Name"
git config --global user.email "youremail@example.com"
```

### Basic Repository Operations
- Create new repository: `git init`
- Clone repository: `git clone <repository_URL>`
- Link remote repository: `git remote add origin <repository_URL>`

## Core Workflow

1. Make changes to files
2. Stage changes: `git add <file_name>`
3. Commit changes: `git commit -m "Descriptive message"`
4. Push to remote: `git push origin <branch_name>`

## Key Concepts

### Branching
- Create branch: `git branch <branch_name>`
- Switch branch: `git checkout <branch_name>`
- Create and switch: `git checkout -b <branch_name>`

### Merging Branches
```bash
git checkout main
git merge <feature_branch>
```

### Pull Requests
- Push branch to remote
- Open pull request on GitHub
- Describe changes
- Request review

## Advanced Techniques

### Merge Conflicts
- Manually edit conflicting files
- Stage resolved files: `git add <file_name>`
- Commit resolution: `git commit -m "Resolved conflict"`

### Rebasing
- Apply changes on top of latest code: `git rebase <branch_name>`

### Squashing Commits
- Combine commits: `git rebase -i <commit_id>`
- Change `pick` to `squash` for selected commits

## .gitignore Best Practices
```
node_modules/
*.log
.env
```

## Pro Tips
- Commit frequently
- Write clear commit messages
- Use branches for features
- Review changes before merging
