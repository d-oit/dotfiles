# Security Policy

## Scope

This repository contains personal dotfiles. There are no services, APIs, or deployed software.

## Reporting a Vulnerability

If you find that this repository accidentally contains secrets, credentials, or sensitive information:

1. **Do not open a public issue.**
2. Email: `security@d-oit.dev` or use [GitHub private vulnerability reporting](https://github.com/d-oit/dotfiles/security/advisories/new).
3. I will respond within 48 hours and rotate any exposed credentials immediately.

## Prevention

- All secrets must be stored in `.env.local` (gitignored)
- Gitleaks CI scan runs on every push and PR
- `.gitignore` blocks common secret file patterns
