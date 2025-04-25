#!/bin/bash

# Source directory for fonts (chezmoi fonts folder)
FONT_DIR="$HOME/.local/share/chezmoi/fonts"

# Destination directory for user fonts
DEST_DIR="$HOME/Library/Fonts"

# Ensure the destination directory exists
mkdir -p "$DEST_DIR"

# Install all .otf fonts
echo "Installing fonts from $FONT_DIR to $DEST_DIR..."
for font in "$FONT_DIR"/*.otf; do
  if [ -f "$font" ]; then
    echo "Installing $(basename "$font")..."
    cp "$font" "$DEST_DIR"
  fi
done

echo "Font installation complete!"
