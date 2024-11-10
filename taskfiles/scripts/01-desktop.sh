#!/bin/bash

set -uo pipefail

# Based on archinstall profile
# https://github.com/archlinux/archinstall/blob/master/archinstall/scripts/minimal.py
# https://github.com/archlinux/archinstall/blob/master/archinstall/default_profiles/desktop.py
# https://github.com/archlinux/archinstall/blob/master/archinstall/default_profiles/applications/pipewire.py
# https://wiki.archlinux.org/title/PipeWire

PKGS=(
  # Modified minimal + desktop
  nano
  git
  vim
  openssh
  wget
  iwd
  wireless_tools
  wpa_supplicant
  smartmontools
  xdg-utils

  # audio
  pipewire
  pipewire-alsa
  pipewire-jack
  pipewire-pulse
  gst-plugin-pipewire
  libpulse
  wireplumber
)

for PKG in "${PKGS[@]}"; do
  echo "INSTALLING PACKAGE: $PKG"
  sudo pacman -S "$PKG" --noconfirm --needed
done

echo
echo "Default packages installed successfully"
echo
