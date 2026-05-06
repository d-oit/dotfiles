# ~/.bashrc - Dominik Oswald
# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# Source aliases
[ -f "$HOME/.bash_aliases" ] && . "$HOME/.bash_aliases"

# Starship prompt
if command -v starship &>/dev/null; then
  eval "$(starship init bash)"
fi

# direnv hook
if command -v direnv &>/dev/null; then
  eval "$(direnv hook bash)"
fi

# mise (formerly rtx) - polyglot runtime manager
if command -v mise &>/dev/null; then
  eval "$(mise activate bash)"
fi

# Rust / Cargo
export PATH="$HOME/.cargo/bin:$PATH"

# Local bin
export PATH="$HOME/.local/bin:$PATH"

# Dev Drive (Windows interop)
export DEVDRIVE="/mnt/c/DevDrive"

# Editor
export EDITOR="code --wait"
export VISUAL="$EDITOR"

# History
HISTSIZE=50000
HISTFILESIZE=100000
HISTCONTROL=ignoredups:erasedups
shopt -s histappend
