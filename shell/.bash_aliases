# General
alias ll='ls -alF --color=auto'
alias la='ls -A'
alias l='ls -CF'
alias cls='clear'
alias ..='cd ..'
alias ...='cd ../..'

# Git
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gpl='git pull'
alias gl='git log --oneline --graph --decorate'
alias gd='git diff'
alias gco='git checkout'
alias gcb='git checkout -b'

# Rust
alias cb='cargo build'
alias cr='cargo run'
alias ct='cargo test'
alias cc='cargo check'
alias cf='cargo fmt'
alias ccl='cargo clippy'

# WSL helpers
alias open='explorer.exe'
alias pbcopy='clip.exe'
alias pbpaste='powershell.exe -command Get-Clipboard'

# Docker / dev containers
alias dc='docker compose'
alias dcu='docker compose up -d'
alias dcd='docker compose down'

# Dotfiles quick edit
alias dotfiles='cd ~/dotfiles && code .'
