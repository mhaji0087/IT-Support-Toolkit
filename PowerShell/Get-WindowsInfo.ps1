# IT Support Toolkit
# Project 01: System Information

Write-Host "===== SYSTEM INFORMATION =====" -ForegroundColor Green

Write-Host "Computer Name:"
$env:COMPUTERNAME

Write-Host "Windows Version:"
(Get-CimInstance Win32_OperatingSystem).Caption

Write-Host "Last Boot Time:"
(Get-CimInstance Win32_OperatingSystem).LastBootUpTime

Write-Host "Processor:"
(Get-CimInstance Win32_Processor).Name
