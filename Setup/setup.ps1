Clear-Host

# Scoop installation
try {
    scoop | Out-Null
    Clear-Host
    Write-Output "Scoop found"
} catch [System.Management.Automation.CommandNotFoundException] {
    Write-Output "Scoop not found.. Installing."
    Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
    Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
}
. $PROFILE

# Scoop setup
scoop bucket add extras
scoop bucket add nerd-fonts
scoop bucket add nonportable
scoop bucket add versions
scoop bucket add games
scoop install scoop-search
Add-Content -Path $PROFILE "Invoke-Expression (&scoop-search --hook)"
. $PROFILE

# Chocolatey installation
winget install Chocolatey.Chocolatey
. $PROFILE

# Powershell setup
Add-Content -Path $PROFILE "Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete"
Add-Content -Path $PROFILE "Set-Alias grep Select-String"
. $PROFILE

# Utility
scoop install "7zip"
scoop install "git"
winget install "Microsoft.PowerToys"

# Runtimes and SDKs
scoop install "windowsdesktop-runtime-lts"
winget install "Microsoft.DotNet.Runtime.3_1"
winget install "Microsoft.DotNet.Runtime.8"

# Linuxification (Fixing Windows)
scoop install "neofetch"  # :3
scoop install "psutils"
scoop install "uutils-coreutils"
scoop install "nano"
scoop install "autohotkey"
scoop install "starship"
scoop install "altdrag"
scoop install "komorebi"
scoop install "teracopy-np"
scoop install "eartrumpet"
winget install "rocksdanister.LivelyWallpaper"

# Windows seven-ification
# scoop install "retrobar"
winget install "valinet.ExplorerPatcher"
scoop install "open-shell-np"
scoop install "winaero-tweaker"
scoop install "8gadgetpack-np"
./sevenification/Windows7Games.exe /s

# # No Win 7 themes for them. Should try Window Blinds
# scoop install "7tsp"
# scoop install "secureuxtheme"

# Programming
winget install "nasm"
winget install "rustup"
# winget install "bun-canary"
sudo choco install mingw
Copy-Item "C:/MinGW/bin/gcc.exe" "C:/MinGW/bin/cc.exe"

# Androeed
scoop install "adb"
scoop install "scrcpy"

# Apps
winget install "Mozilla.Thunderbird"

# Rust tools
cargo install id3-cli

# Configs
# Copy-Item -Path ./Menu Settings.xml -Destination "TO DO"  # Open-Shell stores its settings in the registry.. IRREDEEMABLE!

# Useful system stuff
. $PROFILE
# $query = compact.exe /compactos:query
# if ($query -notmatch "The system is in the Compact state") {
#     Write-Output "Compressing the core OS files.. This may take up to 30 or so minutes"
#     sudo compact /compactos:always
# }
