# Contributing

This is a personal dotfiles repo. External contributions are welcome for bug fixes and improvements.

## Guidelines

- **Shell scripts**: POSIX-compatible unless Bash-only (must use `#!/usr/bin/env bash`)
- **No secrets**: Never commit API keys, tokens, or passwords
- **No absolute paths**: Always use `$HOME` or relative paths
- **Idempotent**: Changes to `install.sh` must be safe to run multiple times
- **LF line endings**: Enforced by `.editorconfig` — configure your editor accordingly

## PR Process

1. Fork the repo
2. Create a branch: `feat/my-config` or `fix/broken-alias`
3. Fill out the PR template checklist
4. CI must pass (ShellCheck, EditorConfig, Gitleaks)
