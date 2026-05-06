#!/usr/bin/env bash
# Check all expected symlinks are in place
set -euo pipefail

OK=0
FAIL=0

check() {
  if [ -L "$1" ]; then
    echo "[OK]   $1 → $(readlink "$1")"
    ((OK++))
  else
    echo "[MISS] $1 (not a symlink)"
    ((FAIL++))
  fi
}

check "$HOME/.bashrc"
check "$HOME/.bash_aliases"
check "$HOME/.profile"
check "$HOME/.gitconfig"
check "$HOME/.gitignore_global"
check "$HOME/.editorconfig"
check "$HOME/.config/starship.toml"

echo ""
echo "Result: $OK OK, $FAIL missing"
[ $FAIL -eq 0 ] && exit 0 || exit 1
