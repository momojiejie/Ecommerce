#!/bin/bash

# Check if commit message and repo URL are provided
if [ -z "$1" ]; then
  echo "Please provide a commit message."
  exit 1
fi

if [ -z "$2" ]; then
  echo "Please provide the GitHub repository URL."
  exit 1
fi

COMMIT_MESSAGE=$1
REPO_URL=$2

# Set remote origin to the specified GitHub repository URL
git remote set-url origin $REPO_URL

# Add all changes (new files, modified files, and deletions)
git add .

# Commit changes with the provided message
git commit -m "$COMMIT_MESSAGE"

# Push changes to the specified repository
git push origin master

# Optional: you could specify your branch here instead of master if using a different branch
# git push origin main

