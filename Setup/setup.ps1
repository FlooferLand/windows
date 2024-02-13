Clear-Host

# Scoop installationWrite-Output ""
try {
    scoop | Out-Null
    Clear-Host
    Write-Output "Scoop found"
} catch [System.Management.Automation.CommandNotFoundException] {
    Write-Output "Scoop not found.. Installing."
    Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
    Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
}

# Scoop setup
scoop bucket add extras
scoop bucket add nerd-fonts 
scoop bucket add nonportable
scoop bucket add versions
scoop bucket add games
scoop install scoop-search
Add-Content -Path $PROFILE "Invoke-Expression (&scoop-search --hook)"

# Utility
scoop install "7zip"
scoop install "git"

# Runtimes and SDKs
scoop install "windowsdesktop-runtime-lts"
winget install "Microsoft.DotNet.Runtime.3.1"
winget install "Microsoft.DotNet.Runtime.8"

# Programming
scoop install "rustup"
scoop install "bun-canary"

# Linuxification
scoop install "neofetch"  # :3
scoop install "autohotkey"
scoop install "psutils"
scoop install "starship"
scoop install "altdrag"
scoop install "komorebi"
scoop install "teracopy-np"
scoop install "open-shell-np"
scoop install "micaforeveryone"

# Androeed
scoop install "adb"
scoop install "scrcpy"

# Configs
# Copy-Item -Path ./Menu Settings.xml -Destination "TO DO"  # Open-Shell stores its settings in the registry.. IRREDEEMABLE!
