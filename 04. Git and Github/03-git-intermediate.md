# Git Intermediate

## Git Revert
The git revert command is used to undo changes made by specific commits in a Git repository by creating new commits that reverse the changes. Unlike `git reset`, `git revert` does not alter the commit history, making it a safer option, especially when collaborating with others.

```bash
git revert HEAD # Revert the latest commit
git revert <commit-hash> # Revert a specific commit
```

## Git Reset
The git reset command moves your current branch (HEAD) to a different commit.

Depending on the option, it can also change which changes are staged or even delete changes from your working directory.

Use it to undo commits, unstage files, or clean up your history.

```bash
git reset --soft <commit> # Move HEAD to commit, keep changes staged
git reset --mixed <commit> # Move HEAD to commit, unstage changes (default)
git reset --hard <commit> # Move HEAD to commit, discard all changes
git reset <file> # Unstage a file
```


## Working with tagging
A tag in Git is like a label or bookmark for a specific commit.

Tags are most often used to mark important points in your project history, like releases (v1.0 or v2.0).

Tags are a simple and reliable way to keep track of versions and share them with your team or users.

Some common tag types include:

- **Releases**: Tags let you mark when your project is ready for release, so you (and others) can always find that exact version later.
- **Milestones**: Use tags to highlight major milestones, like when a big feature is finished or a bug is fixed.
- **Deployment**: Many deployment tools use tags to know which version of your code to deploy.
- **Hotfixes**: If you need to fix an old version, tags make it easy to check out and patch the right code.

```bash
git tag v1.0  # create tag
git tag -a v1.0 -m "Version 1.0 release" # annotated tag stores your name, the date, and a message.
git tag # See all tags in your repository
git push origin v1.0 # Push Tags to Remote
git tag -d v1.0 # delete tag
```

## Merge a Branch and Conflict resolution
Merging in Git means combining the changes from one branch into another.

This is how you bring your work together after working separately on different features or bug fixes.

```bash
git merge <branch_name> # Merge a branch into your 
```

## Clone a Repository
`git clone` A clone is a full copy of a repository, including all logging and versions of files. It creates a local copy of a project that already exists remotely. The clone includes all the project's files, history, and branches.

```bash
git clone <project-repo-url>
```

## Fork a Repository
A fork is a copy of a repository.This is useful when you want to contribute to someone else's project or start your own project based on theirs.

Fork is not a command in Git, but something offered in GitHub and other repository hosts.


## Sending Pull Request


## Git Ignore and .gitignore
The .gitignore file tells Git which files and folders to ignore (not track).

This is useful for keeping log files, temporary files, build artifacts, or personal files out of your repository.

Examples of files to ignore: log files, temporary files, hidden files, personal files, OS/editor files, etc.
The .gitignore file itself is tracked by Git, so everyone using the repository ignores the same files.