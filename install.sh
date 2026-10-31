#!/usr/bin/env bash

set -euo pipefail

readonly REPO_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
readonly PACKAGE_DIR="$REPO_DIR/config"

if ! command -v stow >/dev/null 2>&1; then
    echo "GNU Stow is not installed."

    if ! command -v pacman >/dev/null 2>&1; then
        echo "Error: pacman is not available. Install GNU Stow manually, then rerun this script." >&2
        exit 1
    fi

    read -r -p "Install GNU Stow with pacman? [y/N] " answer
    if [[ "$answer" != [yY] ]]; then
        echo "GNU Stow is required. Aborting." >&2
        exit 1
    fi

    sudo pacman -S --needed stow
fi

echo "Linking configuration files from $PACKAGE_DIR into $HOME..."
stow --dir="$PACKAGE_DIR" --target="$HOME" --restow .
echo "Installation complete."
