#!/bin/bash

set -uo pipefail

PKGS=(
  bash-completion
  starship
  zoxide
)

echo "Installing bash related packages"

for PKG in "${PKGS[@]}"; do
  echo "Installing package: $PKG"
  sudo pacman -S "$PKG" --noconfirm --needed
done

echo "Bash setup is complete"
