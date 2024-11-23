#!/bin/bash

set -uo pipefail

PKGS=(
  alacritty
  wezterm
  bash-completion
  starship
  zoxide
)

echo "Installing shell related packages"

for PKG in "${PKGS[@]}"; do
  echo "Installing package: $PKG"
  sudo pacman -S "$PKG" --noconfirm --needed
done

echo "Shell setup is complete"
