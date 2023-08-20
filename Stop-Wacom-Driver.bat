@echo off

rem Must be ran as administrator!
powershell -Command "& {Get-PnpDevice -FriendlyName "*Wacom*" | Disable-PnpDevice -Confirm:$false}"
sc config WTabletServicePro start=auto
net stop WTabletServicePro
