# IT Support Toolkit
# Project 01: System Information

Write-Host "==================================" -ForegroundColor Cyan
Write-Host "       SYSTEM INFORMATION         " -ForegroundColor Green
Write-Host "==================================" -ForegroundColor Cyan

# Computer Name
$ComputerName = $env:COMPUTERNAME

# Windows Operating System
$OS = Get-CimInstance Win32_OperatingSystem

# Processor Information
$CPU = Get-CimInstance Win32_Processor

# Display Information
Write-Host "Computer Name: $ComputerName"
Write-Host "Windows Version: $($OS.Caption)"
Write-Host "OS Build: $($OS.BuildNumber)"
Write-Host "CPU: $($CPU.Name)"
Write-Host "Last Boot: $($OS.LastBootUpTime)"

Write-Host "==================================" -ForegroundColor Cyan
Write-Host "Information collected successfully!" -ForegroundColor Green