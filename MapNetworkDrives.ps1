# Enter desired drive letter and share path into the variables below
# Example: Z:\\examplefs01\users
# $driveLetter = "Z"
# $sharePath = "\\examplefs01\users"

$driveLetter = ""
$sharePath = ""
 
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
