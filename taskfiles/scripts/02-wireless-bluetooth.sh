#!/bin/bash

set -uo pipefail

PKGS=(
  networkmanager
  # https://wiki.archlinux.org/title/Bluetooth
  bluez
  bluez-utils
  bluez-hid2hci
)

echo "Installing wireless and bluetooth related packages"

for PKG in "${PKGS[@]}"; do
  echo "Installing package: $PKG"
  pacman -S "$PKG" --noconfirm --needed
done

echo "Setting wireless and bluetooth services"

sudo systemctl enable --now bluetooth.service
sudo systemctl enable --now NetworkManager

echo "Wireless and bluetooth setup is complete"
