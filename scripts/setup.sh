#!/bin/bash

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

main() {
  echo "Starting system setup..."
  install_packages
  setup_zsh
  setup_ristretto
  echo "Setup complete!"
}

install_packages() {
  echo "Installing packages..."
  sudo pacman -S --needed --noconfirm - <"$SCRIPT_DIR/list/pkglist.txt"

  echo "Installing AUR packages..."
  if command -v yay &>/dev/null; then
    yay -S --needed --noconfirm - <"$SCRIPT_DIR/list/aurlist.txt"
  else
    echo "No AUR helper found."
    exit 1
  fi

  echo "All packages installed!"
}

setup_zsh() {
  echo "Setting zsh as the default shell"
  chsh -s $(which zsh)
}

setup_ristretto() {
  echo "Setting up Ristretto theme"
  omarchy-theme-set Ristretto
  echo "Ristretto theme has been set up"
}

main
