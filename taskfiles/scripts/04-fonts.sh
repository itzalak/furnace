#!/bin/bash

set -uo pipefail

PKGS=(
  noto-fonts
  noto-fonts-emoji
  ttf-fira-code
  ttf-firacode-nerd
  ttf-iosevka-nerd
  ttf-iosevkaterm-nerd
  ttf-nerd-fonts-symbols
  ttf-zed-mono-nerd
  font-manager
)

echo "Installing fonts"

for PKG in "${PKGS[@]}"; do
  echo "Installing package: $PKG"
  sudo pacman -S "$PKG" --noconfirm --needed
done

echo "Fonts installed"
