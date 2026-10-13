#!/bin/bash
set -euo pipefail

# Directory containing dotfiles
DOTFILES_DIR="$HOME/dotfiles"

# Install tools (see more-linux.md). --needed skips anything already installed.
packages=(fish zoxide eza ttf-hack-nerd visual-studio-code-bin dotnet-sdk zen-browser-bin)
missing=($(pacman -T "${packages[@]}" || true))
if ((${#missing[@]})); then
    sudo pacman -S --needed "${missing[@]}"
fi
mise which node &>/dev/null || mise use -g node@latest  # keep an existing node pin
mise use -g pnpm@latest

# Create symlinks for each dotfile
ln -sfn "$DOTFILES_DIR/.zshrc" "$HOME/.zshrc"

# Create .config directory if it doesn't exist
mkdir -p "$HOME/.config"

# Symlink config directories
# -n replaces an existing link instead of nesting a new one inside it
ln -sfn "$DOTFILES_DIR/.config/fish" "$HOME/.config/fish"

# Global gitignore at git's default path, so core.excludesFile isn't needed
mkdir -p "$HOME/.config/git"
ln -sfn "$DOTFILES_DIR/.gitignore_global" "$HOME/.config/git/ignore"

# Link only the ssh config; keys and known_hosts stay local to this machine
mkdir -p "$HOME/.ssh"
chmod 700 "$HOME/.ssh"
ln -sfn "$DOTFILES_DIR/.ssh/config" "$HOME/.ssh/config"

echo "Dotfiles linked successfully!"
