#!/bin/bash
SRC="/Users/eshaandua/obsidian/Algorithms/"
DEST="/Users/eshaandua/obsidian-algorithms/"

# Sync files from the source to destination, excluding unwanted folders
rsync -av --exclude=".obsidian" --exclude=".git" "$SRC" "$DEST"

# Navigate to the destination directory
cd "$DEST" || exit

# Stage all changes and commit
/usr/bin/git add .
/usr/bin/git commit -m "Automated sync update: $(date +'%Y-%m-%d %H:%M:%S')"
/usr/bin/git push origin main