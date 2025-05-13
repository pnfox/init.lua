#!/bin/bash

set -euo pipefail

# Detect architecture and OS
PROCESSOR=$(uname -p)
OS=$(uname -o)

if [[ "$OS" != "GNU/Linux" ]]; then
    echo 'Failed nvim install: Unrecognised OS'
    exit 1
fi

# Determine correct tarball based on architecture
case "$PROCESSOR" in
    aarch64)
        TARBALL="nvim-linux-arm64.tar.gz"
        ;;
    x86_64)
        TARBALL="nvim-linux-x86_64.tar.gz"
        ;;
    *)
        echo 'Failed nvim install: Unrecognised processor type'
        exit 1
        ;;
esac

# Download and extract
wget "https://github.com/neovim/neovim/releases/latest/download/$TARBALL"
tar xzvf "$TARBALL"

# Move to /opt (assumes nvim folder is named nvim-linux64 after extraction)
sudo mv nvim-linux64 /opt/nvim

# Setup config
mkdir -p "$HOME/.config/nvim"
cp -r init.lua/* "$HOME/.config/nvim/"

# Update .bashrc if necessary
if ! grep -q '/opt/nvim/bin' "$HOME/.bashrc"; then
    echo 'export PATH="$PATH:/opt/nvim/bin"' >> "$HOME/.bashrc"
fi

if ! grep -q 'alias vim=nvim' "$HOME/.bashrc"; then
    echo 'alias vim=nvim' >> "$HOME/.bashrc"
fi

echo "Neovim installation complete. Please restart your terminal or run 'source ~/.bashrc'."
