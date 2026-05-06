#!/usr/bin/env bash
# CI helper: dry-run symlink resolution check (no actual writes)
set -euo pipefail

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"

check_target() {
  local src="$1"
  if [ ! -e "$src" ]; then
    echo "[FAIL] Source does not exist: $src"
    exit 1
  else
    echo "[OK]   $src"
  fi
}

check_target "$DOTFILES_DIR/shell/.bashrc"
check_target "$DOTFILES_DIR/shell/.bash_aliases"
check_target "$DOTFILES_DIR/shell/.profile"
check_target "$DOTFILES_DIR/git/.gitconfig"
check_target "$DOTFILES_DIR/git/.gitignore_global"
check_target "$DOTFILES_DIR/editors/.editorconfig"
check_target "$DOTFILES_DIR/tools/starship.toml"
check_target "$DOTFILES_DIR/wsl/.wslconfig"
check_target "$DOTFILES_DIR/wsl/wsl.conf"

echo ""
echo "All source files present."
