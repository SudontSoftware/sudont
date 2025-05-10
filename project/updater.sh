#!/bin/bash

# Pull the newest sudont
cd ~/.sudont
git pull

# Make everything executable again
chmod +x ~/.sudont/bin/*

# Load dependency list
DEPENDS_FILE="$HOME/.sudont/project/depends.txt"

# Check if the file exists
if [[ ! -f "$DEPENDS_FILE" ]]; then
  echo "Dependency file not found: $DEPENDS_FILE"
  exit 1
fi

# Source the file to load the DEPENDS array
source "$DEPENDS_FILE"

# Check if DEPENDS is set and is an array
if [[ ${#DEPENDS[@]} -eq 0 ]]; then
  echo "No dependencies listed."
  exit 0
fi

# Example: install each dependency using pacman (Arch Linux)
for dep in "${DEPENDS[@]}"; do
  echo "Installing $dep..."
  sudo pacman -Sy --needed --noconfirm "$dep"
done

# Go back
cd -
