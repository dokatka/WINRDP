$WebClient = New-Object System.Net.WebClient
$WebClient.DownloadFile("https://downloads.metasploit.com/data/releases/metasploit-latest-windows-x64-installer.exe","C:\msf.exe")
$i = 360
do {
    Write-Host $i
    Sleep 60
    $i--
} while ($i -gt 0)
