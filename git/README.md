# Git Notes

## Introduction to Git

Git is a distributed version control system that helps manage code changes and enables developer collaboration.

## Key Benefits

- **Version Control**: Track code history and revert to previous versions
- **Collaboration**: Multiple developers can work simultaneously
- **Branching**: Develop features without disrupting main project

## Getting Started

### Installation
1. Download Git from [git-scm.com](https://git-scm.com/)
2. Configure user information:
```bash
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"
```

### Repository Operations
- Create a new repository: `git init`
- Clone a repository: `git clone <repository_URL>`
- Link to remote repository: `git remote add origin <repository_URL>`

## Basic Workflow

1. Make changes to files
2. Stage changes: `git add <file_name>`
3. Commit changes: `git commit -m "Commit message"`
4. Push to remote: `git push origin <branch_name>`

## Key Concepts

### Branching
- Create branch: `git branch <branch_name>`
- Switch branch: `git checkout <branch_name>`
- Create and switch: `git checkout -b <branch_name>`

### Pull Requests
- Push branch to remote
- Open pull request on GitHub
- Describe changes
- Request review

### Merge Conflicts
- Git marks conflicting areas in files
- Manually edit conflicts
- Stage resolved files: `git add <file_name>`
- Commit resolution

## Advanced Techniques

### Rebasing
- Apply changes on top of latest code: `git rebase <branch_name>`

### Squashing Commits
- Combine multiple commits: `git rebase -i <commit_id>`
- Change `pick` to `squash` for selected commits

## .gitignore

Prevent tracking of unnecessary files:
```
node_modules/
*.log
*.env
```

## Best Practices

- Commit frequently
- Write clear commit messages
- Use branching for features
- Review changes before merging
