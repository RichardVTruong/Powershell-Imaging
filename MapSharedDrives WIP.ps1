$driveLetter = "Y"
$sharePath = "\\lgbtfs01\users"
 
# Check if the drive is already mapped, and if so, disconnect it
if (Test-Path "$driveLetter`:") {
    Write-Host "Disconnecting existing mapped drive..."
    net use $driveLetter /delete
}
 
# Map the network drive
Write-Host "Mapping network drive..."
net use $driveLetter $sharePath
 
# Check if mapping was successful
if (Test-Path "$driveLetter`:") {
    Write-Host "Network drive mapped successfully."
} else {
    Write-Host "Failed to map the network drive."
}

$driveLetter2 = "Z"
$sharePath2 = "\\lgbtfs01\shared"
 
# Check if the drive is already mapped, and if so, disconnect it
if (Test-Path "$driveLetter2`:") {
    Write-Host "Disconnecting existing mapped drive..."
    net use $driveLetter2 /delete
}
 
# Map the network drive
Write-Host "Mapping network drive..."
net use $driveLetter2 $sharePath2
 
# Check if mapping was successful
if (Test-Path "$driveLetter2`:") {
    Write-Host "Network drive mapped successfully."
} else {
    Write-Host "Failed to map the network drive."
}