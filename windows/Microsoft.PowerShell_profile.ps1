# PowerShell Profile — Windows side
# Place at: $PROFILE (usually Documents\PowerShell\Microsoft.PowerShell_profile.ps1)

# Starship prompt
if (Get-Command starship -ErrorAction SilentlyContinue) {
  Invoke-Expression (&starship init powershell)
}

# Aliases
Set-Alias -Name open -Value explorer
function dev { Set-Location C:\DevDrive }
function wsl-shutdown { wsl --shutdown }
function dotfiles { Set-Location C:\DevDrive\dotfiles }

# Git helpers
function gs { git status }
function gl { git log --oneline --graph --decorate }

# Env
$env:DEVDRIVE = 'C:\DevDrive'
