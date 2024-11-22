#!/bin/bash

set -uo pipefail

# Function to check for required tools
check_required_tools() {
  local tools=("$@")
  for tool in "${tools[@]}"; do
    if ! command -v "$tool" &>/dev/null; then
      echo "Error: $tool is not installed."
      exit 1
    fi
  done
}

PIPX_PKGS=(
  black
  ruff
  poetry
  commitizen
  pre-commit
  cookiecutter
)

PIPX_REQUIREMENTS=(python pip)
check_required_tools "${PIPX_REQUIREMENTS[@]}"

echo "Installing pipx packages"

for PKG in "${PIPX_PKGS[@]}"; do
  echo "Installing package: $PKG"
  pipx install "$PKG"
done

# Ensure pipx is in the PATH
pipx ensurepath

echo "Installation of python packages completed successfully."
