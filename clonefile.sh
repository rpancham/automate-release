#!/bin/bash

# Define repository URL
REPO_URL="https://https://github.com/rpancham/automate-release.git"

# Define folder to clone
FOLDER_PATH="https://github.com/rpancham/automate-release/tree/main/.github/workflows"

# Define branch or tag name
BRANCH_OR_TAG="main"

# Define destination directory
DESTINATION_DIR="/home/rpancham/Documents"

# Clone the repository with depth 1 to only get the latest commit
git clone --depth 1 --branch "$BRANCH_OR_TAG" "$REPO_URL" "$DESTINATION_DIR"

# Move to the folder
cd "$DESTINATION_DIR" || exit

# # Checkout only the specific folder
# git sparse-checkout init --cone
# git sparse-checkout set "$FOLDER_PATH"
git archive --format=tar.gz --remote="$REPO_URL" "$BRANCH_OR_TAG" "$FOLDER_PATH" | tar xz
