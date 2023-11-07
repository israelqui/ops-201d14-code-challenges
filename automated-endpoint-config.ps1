
# Enable File and Printer Sharing
Enable-NetFirewallRule -DisplayGroup "File and Printer Sharing"
## to confirm: Get-NetFirewallRule | Where-Object { $_.Enabled -eq 'True' -and $_.DisplayName -match "File and Printer Sharing" }

# Allow ICMP traffic
Set-NetFirewallRule -Name FPS-ICMP4-ERQ-In -Enabled True
## to confirm: Get-NetFirewallRule | Where-Object { $_.Protocol -eq 'ICMPv4' }

# Enable Remote management
Enable-PSRemoting -Force
Set-Item WSMan:\localhost\Client\TrustedHosts -Value "*"
## to confirm: Get-ItemProperty -Path 'HKLM:\System\CurrentControlSet\Control\Terminal Server' -Name fDenyTSConnections

# Remove bloatware

iex ((New-Object System.Net.WebClient).DownloadString('https://git.io/debloat'))

# Enable Hyper-V
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All

# Disable SMBv1
Set-SmbServerConfiguration -EnableSMB1Protocol $false -Force
# to confirm: Get-SmbServerConfiguration | Select-Object EnableSMB1Protocol