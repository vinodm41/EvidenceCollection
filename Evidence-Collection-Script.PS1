Add-Content -Path "Hostname.txt" -Value "### ComputerName(Hostname)"
Get-WmiObject -Class Win32_ComputerSystem | Select-Object Name | Format-Table | Out-File "Hostname.txt" -Encoding UTF8 -Append
Add-Content -Path "Hostname.txt" -Value "### Date & Time of Collection"
Get-Date | Format-Table -Property DateTime | Out-File "Hostname.txt" -Encoding UTF8 -Append
Add-Content -Path "Hostname.txt" -Value "### Computer Information"
Get-ComputerInfo | Format-List | Out-File "Hostname.txt" -Encoding UTF8 -Append
Add-Content -Path "Hostname.txt" -Value "### Process Information"
Get-Process | Select-Object * | Format-Table -AutoSize -Wrap | Out-File "Hostname.txt" -Encoding UTF8 -Append
Add-Content -Path "Hostname.txt" -Value "### Services Information"
Get-Service | Select-Object Name, DisplayName, Status, StartType | Out-File "Hostname.txt" -Encoding UTF8 -Append
Add-Content -Path "Hostname.txt" -Value "### Net Connection Profile" 
Get-NetConnectionProfile | Format-List | Out-File "Hostname.txt" -Encoding UTF8 -Append
Add-Content -Path "Hostname.txt" -Value "### Neighbor Cache Entries"
Get-NetNeighbor | Format-Table | Out-File "Hostname.txt" -Encoding UTF8 -Append
Add-Content -Path "Hostname.txt" -Value "### Netstat Output"
netstat -anbo | Format-Table -AutoSize -Property * | Out-File "Hostname.txt" -Encoding UTF8 -Append
Add-Content -Path "Hostname.txt" -Value "### TCP Connections"
Get-NetTCPConnection | Format-Table | Out-File "Hostname.txt" -Encoding UTF8 -Append
Add-Content -Path "Hostname.txt" -Value "### UDP Connections"
Get-NetUDPEndpoint | Format-Table | Out-File "Hostname.txt" -Encoding UTF8 -Append
Add-Content -Path "Hostname.txt" -Value "### Local Users Information"
Get-LocalUser | Select * | Out-File "Hostname.txt" -Encoding UTF8 -Append
Add-Content -Path "Hostname.txt" -Value "### Local Groups Information"
Get-LocalGroup | Select * | Out-File "Hostname.txt" -Encoding UTF8 -Append
Add-Content -Path "Hostname.txt" -Value "### Local Groups Members Information"
Get-LocalGroupMember -Group "Administrators" | Out-File "Hostname.txt" -Encoding UTF8 -Append
Add-Content -Path "Hostname.txt" -Value "### IP route Information"
Get-NetRoute | Format-Table | Out-File "Hostname.txt" -Encoding UTF8 -Append
Add-Content -Path "Hostname.txt" -Value "### Network interfaces Configured"
Get-DnsClient | Format-Table | Out-File "Hostname.txt" -Encoding UTF8 -Append
Add-Content -Path "Hostname.txt" -Value "### DNS client cache"
Get-DnsClientCache | Format-Table | Out-File "Hostname.txt" -Encoding UTF8 -Append
Add-Content -Path "Hostname.txt" -Value "### Global DNS client settings"
Get-DnsClientGlobalSetting | Format-Table | Out-File "Hostname.txt" -Encoding UTF8 -Append
Add-Content -Path "Hostname.txt" -Value "###  DNS server IP addresses associated"
Get-DnsClientServerAddress | Format-Table | Out-File "Hostname.txt" -Encoding UTF8 -Append
Add-Content -Path "Hostname.txt" -Value "### IP configuration"
ipconfig /all | Out-File "Hostname.txt" -Encoding UTF8 -Append
Add-Content -Path "Hostname.txt" -Value "### Software Installed"
Get-WMIObject -Query "SELECT * FROM Win32_Product" | Select-Object Name,Caption,Version | Format-Table -AutoSize -Property Name,Caption,Version | Out-File "Hostname.txt" -Encoding UTF8 -Append
Add-Content -Path "Hostname.txt" -Value "### List of packages for all User"
Get-AppxPackage -AllUsers | Select-Object Name,PackageFamilyName | Format-Table | Out-File "Hostname.txt" -Encoding UTF8 -Append
Add-Content -Path "Hostname.txt" -Value "### SMB sessions that are currently established"
Get-SmbSession | Format-Table | Out-File "Hostname.txt" -Encoding UTF8 -Append
Add-Content -Path "Hostname.txt" -Value "### Network Shares List"
Get-SmbShare | Format-Table | Out-File "Hostname.txt" -Encoding UTF8 -Append
Add-Content -Path "Hostname.txt" -Value "### Open files that are open on behalf of the clients"
Get-SmbOpenFile | Format-Table | Out-File "Hostname.txt" -Encoding UTF8 -Append
Add-Content -Path "Hostname.txt" -Value "### Schedule Tasks"
Get-ScheduledTask | Format-Table | Out-File "Hostname.txt" -Encoding UTF8 -Append
Add-Content -Path "Hostname.txt" -Value "### Startup Tasks"
Get-CimInstance -Class Win32_StartupCommand | Format-Table -AutoSize -Wrap | Out-File "Hostname.txt" -Encoding UTF8 -Append
Add-Content -Path "Hostname.txt" -Value "### Run Once, Run, AutoRuns"
Get-Item HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run | Out-File "Hostname.txt" -Encoding UTF8 -Append
Get-Item HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce | Out-File "Hostname.txt" -Encoding UTF8 -Append
Get-Item HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run | Out-File "Hostname.txt" -Encoding UTF8 -Append
Get-Item HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce | Out-File "Hostname.txt" -Encoding UTF8 -Append
Add-Content -Path "Hostname.txt" -Value "### Hot Fixes Installed Information"
Get-HotFix | Format-Table | Out-File "Hostname.txt" -Encoding UTF8 -Append
