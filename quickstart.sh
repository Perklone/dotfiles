#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

echo "Starting quick start setup..."

# Step 1: Install dependencies from Brewfile
if [ -f ~/.local/share/chezmoi/Brewfile ]; then
  echo "Installing dependencies from Brewfile..."
  brew bundle --file=~/.local/share/chezmoi/Brewfile
else
  echo "Brewfile not found. Skipping Homebrew dependencies."
fi

# Step 2: Run font installation script
if [ -f ~/.local/share/chezmoi/scripts/install_fonts.sh ]; then
  echo "Installing fonts..."
  bash ~/.local/share/chezmoi/scripts/install_fonts.sh
else
  echo "Font installation script not found. Skipping fonts."
fi

echo "Quick start setup complete!"

