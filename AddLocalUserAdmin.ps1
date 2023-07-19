# Check if the user "TechSupport" exists
$userExists = Get-LocalUser -Name "TechSupport" -ErrorAction SilentlyContinue

if ($userExists) {
    # User exists, add to Administrators group
    $groupExists = Get-LocalGroup -Name "Administrators" -ErrorAction SilentlyContinue

    if ($groupExists) {
        Add-LocalGroupMember -Group "Administrators" -Member "TechSupport"
        Write-Host "User 'TechSupport' added to the 'Administrators' group."
    }
    else {
        Write-Host "The 'Administrators' group does not exist."
    }
}
else {
    # User does not exist, create user and add to Administrators group
    $password = ConvertTo-SecureString -String "C3nterC3nter3909!" -AsPlainText -Force
    New-LocalUser -Name "TechSupport" -Password $password -UserMayNotChangePassword -PasswordNeverExpires

    $groupExists = Get-LocalGroup -Name "Administrators" -ErrorAction SilentlyContinue

    if ($groupExists) {
        Add-LocalGroupMember -Group "Administrators" -Member "TechSupport"
        Write-Host "User 'TechSupport' created and added to the 'Administrators' group."
    }
    else {
        Write-Host "The 'Administrators' group does not exist."
    }
}
