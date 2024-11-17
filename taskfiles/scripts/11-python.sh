#!/bin/bash

set -uo pipefail

PKGS=(
  # Python
  python
  pyenv
  python-pip
  python-pipx
)

echo "Installing required packages for development"

for PKG in "${PKGS[@]}"; do
  echo "Installing package: $PKG"
  sudo pacman -S "$PKG" --noconfirm --needed
done

echo "Development setup is complete"
