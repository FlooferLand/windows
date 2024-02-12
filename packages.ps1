# Scoop setup
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
scoop bucket add extras

# General
scoop install 7zip
scoop install git
scoop install neofetch # :3
scoop install rustup
scoop install starship
scoop install autohotkey

# Androeed
scoop install adb
scoop install scrcpy

