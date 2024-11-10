#!/bin/bash

set -uo pipefail

# Apps and utilities

PKGS=(
  # https://wiki.archlinux.org/title/NetworkManager#Using_iwd_as_the_Wi-Fi_backend
  networkmanager
  # https://www.gnu.org/software/stow/
  stow
)

for PKG in "${PKGS[@]}"; do
  echo "INSTALLING PACKAGE: $PKG"
  sudo pacman -S "$PKG" --noconfirm --needed
done

echo
echo "Default packages installed successfully"
echo
