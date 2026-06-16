#!/bin/bash

# Directory containing dotfiles
DOTFILES_DIR="$HOME/dotfiles"

# Create symlinks for each dotfile
ln -sf "$DOTFILES_DIR/.bashrc" "$HOME/.bashrc"
ln -sf "$DOTFILES_DIR/.zshrc" "$HOME/.zshrc"
ln -sf "$DOTFILES_DIR/.vimrc" "$HOME/.vimrc"
ln -sf "$DOTFILES_DIR/.gitconfig" "$HOME/.gitconfig"
ln -sf "$DOTFILES_DIR/.aerospace.toml" "$HOME/.aerospace.toml"

# Create .config directory if it doesn't exist
mkdir -p "$HOME/.config"

# Symlink config directories
ln -sf "$DOTFILES_DIR/.config/nvim" "$HOME/.config/nvim"
ln -sf "$DOTFILES_DIR/.config/fish" "$HOME/.config/fish"

# Symlink just the SSH config file (never the whole ~/.ssh dir — keys stay local)
mkdir -p "$HOME/.ssh" && chmod 700 "$HOME/.ssh"
ln -sf "$DOTFILES_DIR/.ssh/config" "$HOME/.ssh/config"

echo "Dotfiles linked successfully!"
