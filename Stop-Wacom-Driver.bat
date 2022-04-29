# Must be ran as administrator!
powershell -Command "& {Get-PnpDevice -FriendlyName "*Wacom*" | Disable-PnpDevice -Confirm:$false}"
net stop WTabletServicePro
