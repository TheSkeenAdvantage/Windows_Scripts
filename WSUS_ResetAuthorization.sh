net stop bits
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate" /v SusClientId /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate" /v SusClientIDValidation /f
rd /s /q "C:\WINDOWS\SoftwareDistribution"
net start bits
net start wuauserv
wuauclt /resetauthorization /detectnow
powershell.exe (New-Object -ComObject Microsoft.Update.AutoUpdate).detectnow()