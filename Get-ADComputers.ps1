Import-Module ActiveDirectory
Get-ADComputer -Filter {enabled -eq $true} -properties *|select Name, DNSHostName, OperatingSystem, LastLogonDate

Read-Host -Prompt "Press Enter to exit"