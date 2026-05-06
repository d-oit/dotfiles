# dotfiles

Personal dotfiles for Dominik Oswald — WSL2 (Debian), Windows Dev Drive, Rust/TypeScript/Python dev environment.

## Structure

```
dotfiles/
├── shell/          # Bash/Zsh config, aliases, functions
├── git/            # .gitconfig, .gitignore_global
├── wsl/            # .wslconfig, wsl.conf
├── editors/        # VS Code settings, .editorconfig
├── tools/          # Tool-specific configs (starship, direnv, etc.)
├── agents/         # AGENTS.md, AI agent skills and configs
├── scripts/        # install.sh, bootstrap.sh, symlink scripts
└── windows/        # PowerShell profile, Windows-side configs
```

## Quick Start

```bash
git clone https://github.com/d-oit/dotfiles.git ~/dotfiles
cd ~/dotfiles
bash scripts/install.sh
```

## Philosophy

- **Idempotent**: Running install multiple times is safe
- **Modular**: Each tool config lives in its own directory
- **Symlinked**: Configs are symlinked into `$HOME`, not copied
- **Documented**: See `AGENTS.md` for AI agent context
