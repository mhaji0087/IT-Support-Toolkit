# IT Support Toolkit
# Project 02: Disk Space Monitor

Write-Host "===== DISK SPACE MONITOR =====" -ForegroundColor Cyan

# Get local disk information
$Disks = Get-CimInstance Win32_LogicalDisk -Filter "DriveType=3"

foreach ($Disk in $Disks) {

    # Convert bytes to GB
    $TotalGB = [math]::Round($Disk.Size / 1GB, 2)
    $FreeGB = [math]::Round($Disk.FreeSpace / 1GB, 2)

    # Calculate free space percentage
    $FreePercent = [math]::Round(($Disk.FreeSpace / $Disk.Size) * 100, 2)

    Write-Host "-----------------------------" -ForegroundColor Gray

    Write-Host "Drive: $($Disk.DeviceID)"
    Write-Host "Total Space: $TotalGB GB"
    Write-Host "Free Space: $FreeGB GB"
    Write-Host "Free Space Percentage: $FreePercent%"

    # Check disk status
    if ($FreePercent -lt 15) {
        Write-Host "WARNING: Low Disk Space!" -ForegroundColor Red
    }
    else {
        Write-Host "Disk Status: Healthy" -ForegroundColor Green
    }
}

Write-Host "===== SCAN COMPLETED =====" -ForegroundColor Cyan