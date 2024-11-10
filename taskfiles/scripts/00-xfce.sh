#!/bin/bash

set -uo pipefail

# Based on archinstall profile
# https://github.com/archlinux/archinstall/blob/master/archinstall/default_profiles/desktops/xfce4.py
# https://wiki.archlinux.org/title/Xfce
# https://docs.xfce.org/start
# https://archlinux.org/groups/x86_64/xfce4/
# https://archlinux.org/groups/x86_64/xfce4-goodies/

PKGS=(
  xfce4
  xfce4-goodies
  pavucontrol
  gvfs
  xarchiver
)

for PKG in "${PKGS[@]}"; do
  echo "INSTALLING PACKAGE: $PKG"
  sudo pacman -S "$PKG" --noconfirm --needed
done

echo
echo "Default packages installed successfully"
echo
