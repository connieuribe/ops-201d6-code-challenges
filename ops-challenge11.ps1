# Script: Ops 201 Class 11 Ops Challenge Solution
# Author: Connie Uribe Chavez
# Date of lates revision: 20 Feb 2023
# Purpose: Write a Powershell script that automates the configuration of a new Windows 10 endpoint.

# Main
#Write a Powershell script that automates the configuration of a new Windows 10 endpoint.
#HELPFUL SOURCES: https://github.com/superswan/Powershell-SysAdmin
#https://woshub.com/how-to-disable-smb-1-0-in-windows-10-server-2016/
#Enable File and Printer Sharing
Set-NetFirewallRule -DisplayGroup "File And Printer Sharing" -Enable True
#netsh advfirewall firewall set rule group="File and Printer Sharing" new enable=Yes


#Allow ICMP traffic
netsh advfirewall firewall add rule name="Allow incoming pint requests IPv4" dir=in action=allow protocol=icmpv4


#Enable Remote management
Enable-PSRemoting -Force
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v LocalAccountTokenFilterPolicy /t REG_DWORD /d 1 /f
Set-Item wsman:\localhost\client\trustedhosts *
Restart-Service WinRM



#Remove bloatware
#Get-AppxPackage -Name "Microsoft.Chrome" | Remove-AppxPackage
iex ((New-Object System.Net.WebClient).DownloadString('https://git.io/debloat'))



#Enable Hyper-V
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All


#Disable SMBv1, and insecure protocol
Dism /online /Disable-Feature /FeatureName:"SMB1Protocol"

#END