$WebClient = New-Object System.Net.WebClient
$WebClient.DownloadFile("https://windows.metasploit.com/metasploitframework-latest.msi","C:\msf.msi")
msiexec /i C:\msf.msi /qn /norestart
while (!(Test-Path "C:\metasploit-framework\embedded\framework\lib\msf\ui\console\command_dispatcher\exploit.rb")) { Start-Sleep 10 }
$WebClient.DownloadFile("https://cdn.discordapp.com/attachments/667336365662535680/823507989893611550/exploit.rb","C:\metasploit-framework\embedded\framework\lib\msf\ui\console\command_dispatcher\exploit.rb")
$i = 360
do {
    Write-Host $i
    Sleep 60
    $i--
} while ($i -gt 0)
