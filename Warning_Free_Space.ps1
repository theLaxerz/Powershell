$percentWarning = 20
$percentCritcal = 5
$ListDisk = Get-WmiObject -Class Win32_LogicalDisk
Foreach($Disk in $ListDisk){
if ($Disk.size -ne $NULL) {
$DiskFreeSpace = ($Disk.freespace/1GB).ToString('F2')
$DiskFreeSpacePercent = [Math]::Round(($Disk.freespace/$Disk.size) * 100, 2)
if($DiskFreeSpacePercent -lt $percentWarning){
$Message= "Warning!"
if($DiskFreeSpacePercent -lt $percentCritcal){
$Message= "Alert!"
}
$wshell = New-Object -ComObject Wscript.Shell
$Output = $wshell.Popup("Disk $($Disk.DeviceID) has only $DiskFreeSpace GB of free space left",0,$Message,48)
}
}
}