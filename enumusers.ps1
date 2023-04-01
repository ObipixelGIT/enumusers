# Creator: Dimitrios Zacharopoulos
# Company: Obipixel Ltd
# Date: 21 Jan 2023

# Enumerate local user accounts
$localUsers = Get-LocalUser

if ($localUsers) {
    Write-Host "Local User Accounts:" -ForegroundColor Green
    foreach ($user in $localUsers) {
        Write-Host "`t$user.Name" -ForegroundColor Cyan
    }
} else {
    Write-Host "No local user accounts found." -ForegroundColor Red
}

# Enumerate local groups
$localGroups = Get-LocalGroup

if ($localGroups) {
    Write-Host "Local Groups:" -ForegroundColor Green
    foreach ($group in $localGroups) {
        Write-Host "`t$group.Name" -ForegroundColor Cyan
    }
} else {
    Write-Host "No local groups found." -ForegroundColor Red
}