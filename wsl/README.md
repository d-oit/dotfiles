# WSL Config

## Files

| File | Host Location | Purpose |
|------|---------------|----------|
| `.wslconfig` | `C:\Users\<user>\.wslconfig` | Windows-side WSL2 resource limits |
| `wsl.conf` | `/etc/wsl.conf` (inside distro) | Distro-side mount/boot settings |

## Install

```powershell
# From PowerShell on Windows
Copy-Item .wslconfig $env:USERPROFILE\.wslconfig
```

```bash
# From inside WSL
sudo cp wsl.conf /etc/wsl.conf
```

After changes: `wsl --shutdown` then reopen terminal.
