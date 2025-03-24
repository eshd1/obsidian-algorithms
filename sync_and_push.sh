#!/bin/bash
SRC=""
DEST=""

# Sync files from the source to destination
rsync -av --delete "$SRC" "$DEST"

# Navigate to the destination directory 
cd "$DEST" || exit

# Stage all changes
git add .

git commit -m "Automated sync update: $(date +'%Y-%m-%d %H:%M:%S')"

git push origin main