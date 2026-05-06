# AGENTS.md

This file is the primary instruction source for AI agents working in this repository.

## Repository Purpose

Personal dotfiles for a WSL2 (Debian) + Windows Dev Drive development environment.
Primary languages: Rust, TypeScript/JavaScript, Python, Shell/Bash.

## Conventions

- All configs are **symlinked** from `~/dotfiles/<category>/` to their canonical `$HOME` paths via `scripts/install.sh`.
- Never hardcode `/home/dominik` — always use `$HOME` or `~`.
- Shell scripts must be POSIX-compatible unless explicitly Bash-only (use `#!/usr/bin/env bash`).
- Keep secrets out of dotfiles — use `.env.local` (gitignored) or OS keyring.

## Directory Ownership

| Directory   | Purpose                                      |
|-------------|----------------------------------------------|
| `shell/`    | Bash/Zsh rc files, aliases, functions        |
| `git/`      | Global git config and ignore                 |
| `wsl/`      | WSL2 host config (.wslconfig) and wsl.conf   |
| `editors/`  | VS Code, .editorconfig                       |
| `tools/`    | starship, direnv, mise, gh, etc.             |
| `agents/`   | AI agent skills and prompt templates         |
| `scripts/`  | Bootstrap, install, symlink management       |
| `windows/`  | PowerShell profile, Windows-side configs     |

## Agent Skills Location

Agent skills live in `agents/skills/` and are symlinked to:
- `.agents/skills/`
- `.claude/skills/`
- Other CLI-specific folders as needed

## Do Not

- Do not commit secrets, API keys, or tokens
- Do not use absolute paths that are machine-specific
- Do not overwrite existing files without backup logic in scripts
- Do not generate sloppy AI text in README.md (that file is for humans)
