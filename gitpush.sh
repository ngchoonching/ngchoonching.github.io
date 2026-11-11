#!/bin/bash

# Ask user for commit message
read -p "Enter commit message: " message

# Check if commit message is empty
if [ -z "$message" ]; then
    echo "Error: Commit message cannot be empty!"
    exit 1
fi

# Add all changes
echo "Adding files..."
git add .

# Commit changes
echo "Committing changes..."
git commit -m "$message"

# Check commit status
if [ $? -ne 0 ]; then
    echo "Commit failed. Push cancelled."
    exit 1
fi

# Push to remote repository
echo "Pushing to remote repository..."
git push

echo "Done! Changes pushed successfully."

