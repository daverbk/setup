#!/bin/bash

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Installing packages..."
sudo pacman -S --needed - < "$SCRIPT_DIR/list/pkglist.txt"

echo "Installing AUR packages..."
if command -v yay &> /dev/null; then
    yay -S --needed - < "$SCRIPT_DIR/list/aurlist.txt"
else
    echo "No AUR helper found."
    exit 1
fi

echo "All packages installed!"
