# #!/bin/bash

# # Define repository URL
# REPO_URL="git@github.com:kiegroup/kie-tools.git"

# # Define folder to clone
# FOLDER_PATH="https://github.com/kiegroup/kie-tools/tree/main/packages/kn-plugin-workflow"

# # Define branch or tag name
# BRANCH_OR_TAG="main"

# # Define destination directory
# DESTINATION_DIR="/home/rpancham/Documents/newww"

# # Clone the repository with depth 1 to only get the latest commit
# git clone --depth 1 --branch "$BRANCH_OR_TAG" "$REPO_URL" "$DESTINATION_DIR"

# # Move to the folder
# cd "$DESTINATION_DIR" || exit

# # # Checkout only the specific folder
# # git sparse-checkout init --cone
# # git sparse-checkout set "$FOLDER_PATH"
# git archive --format=tar.gz --remote="$REPO_URL" "$BRANCH_OR_TAG" "$FOLDER_PATH" | tar xz


##code 2 -working 
# #!/bin/bash

# # Define repository URL
# REPO_URL="git@github.com:kiegroup/kie-tools.git"

# # Define branch or tag name
# BRANCH_OR_TAG="main"

# # Define folder to clone
# FOLDER_PATH="packages/kn-plugin-workflow"

# # Define destination directory
# DESTINATION_DIR="/home/rpancham/Documents/Neww1"

# # Create destination directory if it doesn't exist
# mkdir -p "$DESTINATION_DIR"

# # Move to the destination directory
# cd "$DESTINATION_DIR" || exit

# # Initialize a new Git repository
# git init

# # Add the remote repository
# git remote add origin "$REPO_URL"

# # Configure sparse checkout
# git config core.sparseCheckout true

# # Define the folder to checkout
# echo "$FOLDER_PATH" >> .git/info/sparse-checkout

# # Pull the specified branch
# git pull origin "$BRANCH_OR_TAG"

# echo "The folder $FOLDER_PATH has been successfully cloned to $DESTINATION_DIR"




# Code 3 
#!/bin/bash

# Define repository URL
REPO_URL="git@github.com:kiegroup/kie-tools.git"

# Define branch or tag name
BRANCH_OR_TAG="main"

# Define folder to clone
FOLDER_PATH="kn-plugin-workflow"

# Define destination directory
DESTINATION_DIR="/home/rpancham/Documents/N"

# Create destination directory if it doesn't exist
mkdir -p "$DESTINATION_DIR"

# Move to the destination directory
cd "$DESTINATION_DIR" || exit

# Initialize a new Git repository
git init

# Add the remote repository
git remote add origin "$REPO_URL"

# Enable sparse checkout
git config core.sparseCheckout true

# Define the folder to sparse-checkout
echo "$FOLDER_PATH" >> .git/info/sparse-checkout

# Pull the specified branch, fetching only the desired folder
git pull origin "$BRANCH_OR_TAG"

echo "The folder $FOLDER_PATH has been successfully cloned to $DESTINATION_DIR"
