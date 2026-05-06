#!/usr/bin/env bash
set -euo pipefail

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/.."
DOTFILES_DIR="$(realpath "$DOTFILES_DIR")"

log() { echo "[dotfiles] $*"; }

symlink() {
  local src="$1"
  local dst="$2"
  if [ -e "$dst" ] && [ ! -L "$dst" ]; then
    log "Backing up existing $dst → $dst.bak"
    mv "$dst" "$dst.bak"
  fi
  mkdir -p "$(dirname "$dst")"
  ln -sfn "$src" "$dst"
  log "Linked $src → $dst"
}

# Shell
symlink "$DOTFILES_DIR/shell/.bashrc" "$HOME/.bashrc"
symlink "$DOTFILES_DIR/shell/.bash_aliases" "$HOME/.bash_aliases"
symlink "$DOTFILES_DIR/shell/.profile" "$HOME/.profile"

# Git
symlink "$DOTFILES_DIR/git/.gitconfig" "$HOME/.gitconfig"
symlink "$DOTFILES_DIR/git/.gitignore_global" "$HOME/.gitignore_global"

# Tools
symlink "$DOTFILES_DIR/tools/starship.toml" "$HOME/.config/starship.toml"
symlink "$DOTFILES_DIR/tools/.direnvrc" "$HOME/.direnvrc"

# Editors
symlink "$DOTFILES_DIR/editors/.editorconfig" "$HOME/.editorconfig"

# Agent skills symlinks
mkdir -p "$HOME/.agents/skills"
if [ -d "$DOTFILES_DIR/agents/skills" ]; then
  for skill in "$DOTFILES_DIR/agents/skills/"*; do
    skill_name="$(basename "$skill")"
    symlink "$skill" "$HOME/.agents/skills/$skill_name"
  done
fi

log "Done! Reload your shell: exec \$SHELL"
