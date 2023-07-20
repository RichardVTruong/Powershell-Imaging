# Get the serial number
$wmiClass = Get-WmiObject -Class Win32_BIOS
$serialNumber = $wmiClass.SerialNumber

# Get the device name
$deviceName = $env:COMPUTERNAME

# Displays the serial number and device name

Write-Host "Serial Number: $serialNumber"
Write-Host "Device Name: $deviceName"