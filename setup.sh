#!/bin/bash

# Directory containing dotfiles
DOTFILES_DIR="$HOME/dotfiles"

# Create symlinks for each dotfile
ln -sf "$DOTFILES_DIR/.bashrc" "$HOME/.bashrc"
ln -sf "$DOTFILES_DIR/.zshrc" "$HOME/.zshrc"
ln -sf "$DOTFILES_DIR/.vimrc" "$HOME/.vimrc"
ln -sf "$DOTFILES_DIR/.gitconfig" "$HOME/.gitconfig"

# Create .config directory if it doesn't exist
mkdir -p "$HOME/.config"

# Symlink config directories
ln -sf "$DOTFILES_DIR/.config/nvim" "$HOME/.config/nvim"

echo "Dotfiles linked successfully!"
