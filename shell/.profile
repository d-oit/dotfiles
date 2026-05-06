# ~/.profile
# Runs for login shells

# Include .bashrc if running bash
if [ -n "$BASH_VERSION" ]; then
  [ -f "$HOME/.bashrc" ] && . "$HOME/.bashrc"
fi

export PATH="$HOME/.local/bin:$HOME/.cargo/bin:$PATH"
