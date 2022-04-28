# Must be ran as administrator!
powershell -Command "& {Get-PnpDevice -FriendlyName "*Wacom*" | Enable-PnpDevice -Confirm:$false}"