@echo off

rem Must be ran as administrator!
powershell -Command "& {Get-PnpDevice -FriendlyName "*Wacom*" | Enable-PnpDevice -Confirm:$false}"
sc config WTabletServicePro start=auto
net start WTabletServicePro
