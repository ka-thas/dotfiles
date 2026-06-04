# Dotfiles

Personal config files, symlinked into place via `setup.sh`.

## What's here

| File | Linked to |
|------|-----------|
| `.bashrc` | `~/.bashrc` |
| `.zshrc` | `~/.zshrc` |
| `.aerospace.toml` | `~/.aerospace.toml` |
| `.config/fish/` | `~/.config/fish/` |

## Setup on a new machine

```bash
git clone https://github.com/ka-thas/dotfiles ~/dotfiles
cd ~/dotfiles
bash setup.sh
```

`setup.sh` creates symlinks for all configs. Changes made to files in `~/dotfiles` are reflected immediately; no re-linking needed.
